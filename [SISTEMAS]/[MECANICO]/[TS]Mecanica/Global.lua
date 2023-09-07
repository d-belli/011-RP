--[[
 ______    ______      _____       ____        ______                 
/\__  _\  /\__  _\    /\  __`\    /\  _`\     /\  _  \     /'\_/`\    
\/_/\ \/  \/_/\ \/    \ \ \/\ \   \ \,\L\_\   \ \ \L\ \   /\      \   
   \ \ \     \ \ \     \ \ \ \ \   \/_\__ \    \ \  __ \  \ \ \__\ \  
    \ \ \     \_\ \__   \ \ \_\ \    /\ \L\ \   \ \ \/\ \  \ \ \_/\ \ 
     \ \_\    /\_____\   \ \_____\   \ `\____\   \ \_\ \_\  \ \_\\ \_\
      \/_/    \/_____/    \/_____/    \/_____/    \/_/\/_/   \/_/ \/_/
                                                     
                         » CopyRight © 2022
                 » Meu discord discord.gg/sY5wHR8hW3                                                                          
]]--

configLicense = {
    ["User"] = "243150048878264320", -- ID DO USUARIO
    ["Key"] = "176-F69-305-E5D-TIOSAM", -- KEY DO USUARIO
}

config = {
    ["Mecanica"] = {
		["ACL"] = "Mecanico";  -- ACL DE MECANICO
        ["ItensMecanica"] = {2514.8198242188,-1972.8597412109,13.39999961853}; -- POSICAO DO MARKER PARA PEGAR AS PEÇAS
        ["localRota"] = {2174.6596679688,-2249.3381347656,13.303699493408}; -- LOCAL PARA BUSCAR AS NOVAS PEÇAS PARA A MECANICA
        ["veiculo"] = {2482.3149414062,-1935.3579101562,13.733296394348, -0, 0, 89.120666503906}; -- POSICAO DO VEICULO AO SPAWNAR PARA IR BUSCAR NOVAS PEÇAS x,y,z rx,ry,rz
        ["localFim"] = {2490.6284179688,-1970.5882568359,13.39999961853}; -- POSICAO DE ONDE DEIXAR AS NOVAS PEÇAS ( APÓS BUSCAR ELAS )
        ["removerPeca"] = {2509.9877929688,-1944.431640625,13.39999961853}; -- POSICAO DO MARKER PARA REMOVER UMA PEÇA DA MÃO	
        ["posCar"] = -5.5; -- CASO VOCE USE ALGUM CAMINHAO COM MODELAGEM , E O MARKER ESTEJA SENDO CRIADO NO MEIO DELE , NO LUGAR O -5.5 , VA AUMENTANDO ( -7.5 POR AI VAI) ATÉ FICAR ATRAZ DO VEICULO CERTINHO
        ["valorMec"] = 9500; -- PREÇO PARA REABASTECER A MECANICA
        ["estoque"] = 85; -- NUMERO LIMITE DE PEÇAS PARA CADA ITEM NA MECANICA ( ESTOQUE )
        ["idCar"] = 456; -- ID DO CAMINHAO QUE BUSCA AS PEÇAS	
        ["corDX"] = {['r'] = 255, ['g'] = 30, ['b'] = 30, ['a'] = 255}; -- COR E OPACIDADE DO DX DE QUANDO ARRUMA UM VEICULO , E DE QUANDO APARECE O NOME DOS LOCAIS QUEBRADOS NO VEICULO
        ["corMarkers"] = {['r'] = 0, ['g'] = 114, ['b'] = 255, ['a'] = 255}; -- COR E OPACIDADE DOS MARKERS DE PEGAR OS ITENS , LOCAL DE ROTA, E LOCAL DE DESCARREGAR AS PEÇAS
        ["corMarkerRemover"] = {['r'] = 0, ['g'] = 0, ['b'] = 0, ['a'] = 0}; -- COR E OPACIDADE DO MARKER DE REMOVER UM ITEM		
    };
}

function message(player, text, type)
    exports['dxmessages']:addBox(player, text, type) -- EXPORTS DA SUA INFOBOX
end