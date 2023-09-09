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

local algemas = { }
local gerais = Hyper_Configs['gerais']
local permissoes_acls = {
    ['Policial'] = {'Policial'};
    ['Bandido'] = {'Bandido'};
}


functions_interaction = function( player, name_event, elemento, player_acl ) 
  local verify_policial, acl_player_policial = getAclTable( player, permissoes_acls['Policial'] )
  local verify_bandido, acl_player_bandido = getAclTable( player, permissoes_acls['Bandido'] )
  if name_event == 'Revistar' then
    if gerais['resources']['inventory'] then
        exports['[HS]Inventory_system_2']:garmas( elemento )
        setPedAnimation(player, 'POLICE', 'plc_drgbst_01', 3100, true, false, false, false)
        exports['[HS]circle_progress']:setProgress( player, 'Revistando..', 3, 1000)
        setTimer(function( elemento )
            if isElement( elemento ) then
                exports['[HS]Revist_Inventory']:open_revist( player, elemento )
            end
        end, 3 * 1000, 1, elemento)
    else
        local ID = getElementData(elemento, gerais['data_id']) or 'N/A'
        outputChatBox(gerais['color_hex']..'[Revistando] - #FFFFFFCidadão: '..gerais['color_hex']..''..getPlayerName( elemento )..' #FFFFFFID: '..gerais['color_hex']..''..ID, player, 255, 255, 255, true)
        setPedAnimation(player, 'POLICE', 'plc_drgbst_01', 3100, true, false, false, false)
        exports['[HS]circle_progress']:setProgress( player, 'Revistando..', 3, 1000)
        setTimer(function( elemento )
            if isElement( elemento ) then
                for slot = 0, 12 do
                    local Armas = getPedWeapon ( elemento, slot )
                    local Municao = getPedTotalAmmo ( elemento, slot ) 
                    local weapon_nome = getWeaponNameFromID ( Armas )
                    if Armas > 0 then
                        if Municao > 0 then
                            outputChatBox(gerais['color_hex']..'[Encontrado] - #FFFFFFArma: '..gerais['color_hex']..''..weapon_nome..' #FFFFFFMunição: '..gerais['color_hex']..''..Municao, player, 255, 255, 255, true)
                            revistando = true
                        else
                            revistando = false
                        end
                    end
                end
                if not revistando then
                    outputChatBox(gerais['color_hex']..'[Encontrado] - #FFFFFFNada', player, 255, 255, 255, true)
                end
            end
        end, 3 * 1000, 1, elemento)
    end
  elseif name_event == 'Assaltar' then 
    if gerais['resources']['bandido'] then
        exports['[HS]FacSystem']:HS_Remover( player, elemento, 5, 1000 )
        exports['[HS]circle_progress']:setProgress( player, 'Assaltando..', 5, 1000)
    end
elseif name_event == 'Enviar dinheiro' then
    exports['[HS]Box_Confirmation']:send_box(player, {title = 'Enviar dinheiro', onlynumber = true, maxcharacters = 20, desc = 'Digite a quantidade a ser enviada.', element = elemento})
  elseif name_event == 'Algemar' then
    if not algemas[elemento] then
        if verify_policial and acl_player_policial == player_acl and gerais['resources']['policial'] then
            exports['[HS]PolicialSystem_2']:setPlayerAlgema( player, elemento )
            exports['[HS]circle_progress']:setProgress( player, 'Algemando..', 2, 1000)
        elseif verify_bandido and acl_player_bandido == player_acl and gerais['resources']['bandido'] then
            exports['[HS]FacSystem']:HS_Algemar( player, elemento )
            exports['[HS]circle_progress']:setProgress( player, 'Algemando..', 2, 1000)
        end
        algemas[elemento] = true
    else
        if verify_policial and acl_player_policial == player_acl then
            exports['[HS]PolicialSystem_2']:removePlayerAlgema( player, elemento )
            exports['[HS]circle_progress']:setProgress( player, 'Retirando algemas..', 2, 1000)
        elseif verify_bandido and acl_player_bandido == player_acl then
            exports['[HS]FacSystem']:HS_Algemar( player, elemento )
            exports['[HS]circle_progress']:setProgress( player, 'Retirando algemas..', 2, 1000)
        end
        algemas[elemento] = false
    end
  elseif name_event == 'Agarrar' then
    if verify_policial and acl_player_policial == player_acl and gerais['resources']['policial'] then
        exports['[HS]PolicialSystem_2']:agarrarPlayer( player, elemento )
    elseif verify_bandido and acl_player_bandido == player_acl and gerais['resources']['bandido'] then
        exports['[HS]FacSystem']:HS_Conduzir( player, elemento )
    end
  elseif name_event == 'Conduzir' then
    if verify_policial and acl_player_policial == player_acl and gerais['resources']['policial'] then
        exports['[HS]PolicialSystem_2']:setPlayerMalas( player, elemento )
    elseif verify_bandido and acl_player_bandido == player_acl and gerais['resources']['bandido'] then
        exports['[HS]FacSystem']:HS_Sequestrar( player, elemento )
    end
  elseif name_event == 'Tablet' then
    if gerais['resources']['policial'] then
        exports['[HS]PolicialSystem_2']:open_tablet_player( player )
    end
  elseif name_event == 'Prestar atendimento' then
    if gerais['resources']['resgate'] then
        exports['[HS]Samu_System']:setPlayerResgate( player, elemento )
    end
  elseif name_event == 'Porta malas' and gerais['resources']['porta_malas'] then
    exports['[HS]Trunk']:openTrunk( player, elemento )
  elseif name_event == 'Trancar/Destrancar' then
      if not isVehicleLocked(elemento) then
          setVehicleLocked(elemento, true)
          outputMessage(player, 'Você trancou o veículo com sucesso', 'success')
      else
          setVehicleLocked(elemento, false)
          outputMessage( player, 'Você destrancou o veículo com sucesso', 'success')
      end
  elseif name_event == 'Ligar/Desligar' then
      if getPedOccupiedVehicle( player ) then
          local controller = getVehicleController ( elemento )
          if controller == player then
              setVehicleEngineState(elemento, ( not getVehicleEngineState(elemento) and true or getVehicleEngineState(elemento) and false))
              outputMessage( player, (not getVehicleEngineState(elemento) and 'Você desligou o veículo com sucesso.' or getVehicleEngineState(elemento) and 'Você ligou o veículo com sucesso.'), 'success')
        else
              outputMessage( player, 'Somente o motorista pode ligar/desligar o veículo.', 'error')
          end
      else
          outputMessage( player, 'Entre no veículo para executar ações.', 'error')
      end
  elseif name_event == 'Fárois' then
        local controller = getVehicleController ( elemento )
        if controller == player then
            local state = getVehicleOverrideLights( elemento )
            setVehicleOverrideLights( elemento, ( state ~= 2 and 2 or 1))
            outputMessage( player, ( state ~= 2 and 'Você ligou a luz do veículo com sucesso.' or 'Você desligou a luz do veículo com sucesso.'), 'success')
        else
            outputMessage( player, 'Somente o motorista pode ligar/desligar os fárois.', 'error')
        end
    elseif name_event == 'Abrir baú' then
        exports['[HS]Baus']:chest_open( player, elemento )
    elseif name_event == 'Tratamento' then
        if gerais['resources']['resgate'] then
            exports['[HS]Samu_System']:tratamento( player )
        end
    elseif name_event == 'Deitar' then
        if gerais['resources']['resgate'] then
            exports['[HS]Samu_System']:deitar( player )
        end
    end
    closeCircle( player )
end


addEventHandler('onVehicleStartEnter', root, function( player )
    if isVehicleLocked(source) then
        cancelEvent( )
        outputMessage(player, 'Este veículo está trancado.', 'error')
    end
end)


addEvent('HS:receiver:infos', true)
addEventHandler('HS:receiver:infos', root, function( value, dados )
    if isElement( source ) and dados and isElement( dados['element'] ) then
        local money = getPlayerMoney( source )
        if tonumber(value) and money >= tonumber(value) and tonumber(value) >= 1 then
            givePlayerMoney(dados['element'], tonumber(value))
            takePlayerMoney(source, tonumber(value))
            outputMessage(source, 'Você enviou R$ '..value..' para o cidadão '..getPlayerName( dados['element'] )..'.', 'success')
            outputMessage(dados['element'], 'Você recebeu R$ '..value..' do cidadão '..getPlayerName( source )..'.', 'success')
        else
            outputMessage(source, 'Você não possui dinheiro suficiente.', 'error')
        end
    end
end)