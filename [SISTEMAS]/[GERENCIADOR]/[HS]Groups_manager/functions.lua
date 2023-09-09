--[[ 
╔══════════════════════════════════════════════════[ www.hyperscripts.com.br ]═════════════════════════════════════════════════════════════╗
 ___  ___      ___    ___ ________  _______   ________          ________  ________  ________  ___  ________  _________  ________      
|\  \|\  \    |\  \  /  /|\   __  \|\  ___ \ |\   __  \        |\   ____\|\   ____\|\   __  \|\  \|\   __  \|\___   ___\\   ____\     
\ \  \\\  \   \ \  \/  / | \  \|\  \ \   __/|\ \  \|\  \       \ \  \___|\ \  \___|\ \  \|\  \ \  \ \  \|\  \|___ \  \_\ \  \___|_    
 \ \   __  \   \ \    / / \ \   ____\ \  \_|/_\ \   _  _\       \ \_____  \ \  \    \ \   _  _\ \  \ \   ____\   \ \  \ \ \_____  \   
  \ \  \ \  \   \/  /  /   \ \  \___|\ \  \_|\ \ \  \\  \|       \|____|\  \ \  \____\ \  \\  \\ \  \ \  \___|    \ \  \ \|____|\  \  
   \ \__\ \__\__/  / /      \ \__\    \ \_______\ \__\\ _\         ____\_\  \ \_______\ \__\\ _\\ \__\ \__\        \ \__\  ____\_\  \ 
    \|__|\|__|\___/ /        \|__|     \|_______|\|__|\|__|       |\_________\|_______|\|__|\|__|\|__|\|__|         \|__| |\_________\
             \|___|/                                              \|_________|                                            \|_________|
  
╚══════════════════════════════════════════════════[ www.hyperscripts.com.br ]═════════════════════════════════════════════════════════════╝
--]] 

-- Globals

local veiculo = { }
local fardas = { }
local armas = { }
local gerais = Hyper_Configs['gerais']

-- Função exportada para as funções de: Veículo, Armas e Fardas

use_functions = function( player, infos, sections, name )
     if sections == 'Veículos' then
          if not isElement(veiculo[ player ]) then
               veiculo[ player ] = createVehicle(tonumber(infos['model']), unpack( infos['spawn'] ))
               if infos['warp'] then
                    warpPedIntoVehicle(player, veiculo[ player ])
               end
               outputMessage(player, infos['name']..' retirado com sucesso.', 'success')
               closePanel( player )
          else
               outputMessage(player, 'Você já possui um veículo na rua, guarde o veículo.', 'error')
          end
     elseif sections == 'Armas' then
          local inventory = exports['[HS]Inventory_System_2']
          if inventory:giveItem(player, infos['name'], infos['ammo']) then
               outputMessage(player, 'Você pegou '..infos['ammo']..'x de '..infos['name']..' com sucesso.', 'success')
               table.insert(armas, {elemento = player, arma = infos['name']})
               local id = getElementData(player, gerais['data:id']) or 0
               local date = os.date( '*t' )
               embed('Equipar armamentos', Hyper_Configs['gerenciadores:config'][ name ]['infos']['logs:armas'], '``🔍`` - Membro: '..removehex(getPlayerName( player ))..' #'..id..'\n``💊`` - Quantidade:  '..infos['ammo']..'\n``🔫`` - Arma:  '..infos['name']..'\n``📂`` - Grupo: '..name..'\n``📅`` - Data: '..date.day..'/'..date.month..'/'..date.year, Hyper_Configs['gerenciadores:config'][ name ]['infos']['logs:gif'], Hyper_Configs['gerenciadores:config'][ name ]['infos']['logs:copyright'])
          else
               outputMessage(player, 'Sua mochila está cheia.', 'error')
          end
     elseif sections == 'Fardas' then
          local skin = getElementModel( player )
          if skin ~= infos['model'] then
               fardas[ player ] = skin
               setElementModel(player, infos['model'])
               outputMessage(player, 'Você vestiu '..infos['name']..' com sucesso.', 'success')
          else
               outputMessage(player, 'Você já está com esta roupa equipada.', 'error')
          end
     end
end


use_functions_inicio = function( player, sections, name )
     if sections == 'Veículos' then
          if isElement( veiculo[ player ] ) then 
               destroyElement( veiculo[ player ] ) 
               setLogs( player, 'Você devolveu o veículo com sucesso.' )
               outputMessage(player, 'Você devolveu o veículo com sucesso.', 'success')
          else
               outputMessage(player, 'Você não possui veículo na rua.', 'error')
          end
     elseif sections == 'Armas' then
          if fardas[ player ] then
               setElementModel( player, fardas[ player ] )
               outputMessage(player, 'Você retirou sua vestimenta.', 'info')
               setLogs( player, 'Você retirou sua vestimenta.' )
          end
          local inventory = exports['[HS]Inventory_System_2']
          inventory:garmas( player )
          local armas_equipadas = getWeaponsEquipped( armas, player )
          if armas_equipadas and #armas_equipadas ~= 0 then
               for i = 1, #armas_equipadas do
                    local quantidade = inventory:getItem(player, armas_equipadas[ i ]['arma'])
                    inventory:takeItem(player, armas_equipadas[ i ]['arma'], quantidade)
                    local id = getElementData(player, gerais['data:id']) or 0
                    local date = os.date( '*t' )
                    embed('Guardar armamentos', Hyper_Configs['gerenciadores:config'][ name ]['infos']['logs:armas'], '``🔍`` - Membro: '..removehex(getPlayerName( player ))..' #'..id..'\n``💊`` - Quantidade:  '..quantidade..'\n``🔫`` - Arma:  '..armas_equipadas[ i ]['arma']..'\n``📂`` - Grupo: '..name..'\n``📅`` - Data: '..date.day..'/'..date.month..'/'..date.year, Hyper_Configs['gerenciadores:config'][ name ]['infos']['logs:gif'], Hyper_Configs['gerenciadores:config'][ name ]['infos']['logs:copyright'])
               end
               outputMessage(player, 'Você desequipou suas armas.', 'success')
               setLogs( player, 'Você desequipou suas armas.' )
          else
               outputMessage(player, 'Não há armas equipadas.', 'error')
          end
     end
end


-- onPlayerQuit


addEventHandler('onPlayerQuit', root, function( )
     if isElement( veiculo[ source ] ) then destroyElement( veiculo[ source ] ) end
     if fardas[ source ] then
          setElementModel( player, fardas[ source ] )
     end
     local inventory = exports['[HS]Inventory_System_2']
     inventory:garmas( source )
     local armas_equipadas = getWeaponsEquipped( armas, source )
     if armas_equipadas and #armas_equipadas ~= 0 then
          for i = 1, #armas_equipadas do
               local quantidade = inventory:getItem(source, armas_equipadas[ i ]['arma'])
               inventory:takeItem(source, armas_equipadas[ i ]['arma'], quantidade)
          end
     end
end)


getWeaponsEquipped = function( tabela, player )
     local weapons = { }
     if tabela and #tabela ~= 0 then
          for i = 1, #tabela do
               if tabela[ i ]['elemento'] == player then
                    table.insert(weapons, tabela[ i ])
                    setTimer(function( player )
                         if isElement( player ) then
                              table.remove(tabela, i)
                         end
                    end, 2 * 1000, 1, player)
               end
          end
     end
     return weapons
end