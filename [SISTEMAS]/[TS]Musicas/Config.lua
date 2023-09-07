--[[
 ______    ______      _____       ____        ______                 
/\__  _\  /\__  _\    /\  __`\    /\  _`\     /\  _  \     /'\_/`\    
\/_/\ \/  \/_/\ \/    \ \ \/\ \   \ \,\L\_\   \ \ \L\ \   /\      \   
   \ \ \     \ \ \     \ \ \ \ \   \/_\__ \    \ \  __ \  \ \ \__\ \  
    \ \ \     \_\ \__   \ \ \_\ \    /\ \L\ \   \ \ \/\ \  \ \ \_/\ \ 
     \ \_\    /\_____\   \ \_____\   \ `\____\   \ \_\ \_\  \ \_\\ \_\
      \/_/    \/_____/    \/_____/    \/_____/    \/_/\/_/   \/_/ \/_/
                                                     
                         » CopyRight © 2023
                 » Meu discord discord.gg/sY5wHR8hW3                                                                          
]]--

configLicense = {
    ["User"] = "243150048878264320 ", -- ID DO USUARIO
    ["Key"] = "176-F69-305-E5D-TIOSAM", -- KEY DO USUARIO
}

Config = {
    Gerais = {
        ["Volume"] = 10, -- VOLUME FIXO DO SOM DO DJ
        ["Distancia"] = {Minima = 1, Maxima = 50}, -- DISTANCIA MINIMA E MAXIMA PARA OUVIR A MUSICA DO PAINEL DE DJ
    },
    Radio = {
        ["TeclaPainel"] = "f5", -- TECLA PARA ABRIR O PAINEL E FECHAR ( backspace TAMBEM FECHA )
        ["VolumePadrao"] = 1.0, -- VOLUME PADRÃO PARA MUSICAS EM VEICULOS
        ["VolumeMaximo"] = 3.0, -- VOLUME MAXIMO PARA MUSICAS EM VEICULOS
        ["Distancia"] = {Minimo = 6, Maximo = 20} -- DISTANCIA MINIMA E MAXIMA DE ALCANCE DO SOM DO VEICULO
    },
    Jogador = {
        ["VolumePadrao"] = 0.5, -- VOLUME PADRÃO PARA MUSICAS QUE IRÃO TOCAR APENAS PARA O JOGADOR
        ["VolumeMaximo"] = 5.0, -- VOLUME MAXIMO PARA MUSICAS QUE IRÃO TOCAR APENAS PARA O JOGADOR
    },
    JBL = { 
        ["useJBL"] = true, -- CASO QUEIRA O SISTEMA DE JBL, USE true, CASO NÃO QUEIRA USE false
        ["Comando"] = "jbl", -- COMANDO PARA PEGAR A JBL
        ["IdJBL"] = 2226, -- ID DA MODELAGEM DA JBL
        ["PremiumACLs"] = {"Console", "Admin"}, -- ACLS COM PERMISSÃO PARA USAR A JBL, CASO QUEIRA DEIXAR TODOS COM A PERMISSAO, DEIXE UMA ACL COMO Everyone
        ["Distancia"] = {Minimo = 6, Maximo = 20}, -- DISTANCIA MINIMA E MAXIMA DE ALCANCE DO SOM DA JBL
        ["VolumePadrao"] = 1.0, -- VOLUME PADRAO PARA MUSICAS QUE IRÃO TOCAR NA JBL
        ["VolumeMaximo"] = 3.0, -- VOLUME MAXIMO PARA A JBL
    },
	
    BloquearVeiculos = { -- ID DOS VEICULOS QUE NÃO SERÃO AUTORIZADOS TOCAR MUSICA, 'true' PARA BLOQUEAR
        [481] = true, 
        [510] = true, 
        [509] = true, 
        [581] = true, 
        [462] = true, 
        [521] = true, 
        [463] = true, 
        [522] = true, 
        [461] = true, 
        [448] = true, 
        [468] = true, 
        [586] = true, 
    },
}

function message(player, text, type)
    exports['dxmessages']:addBox(player, text, type) -- EXPORTS DA SUA INFOBOX
end