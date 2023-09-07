Grupo = "Mecanico" -- ACL MECANICO	
Soltar = "soltar" -- COMANDO PARA SOLTAR A MALETA NO CHÃO
Pegar = "pegar" -- COMANDO PARA PEGAR A MALETA DO CHÃO 
Arrumar = "reparar" -- COMANDO PARA ARRUMAR O MOTOR 

function message(player, text, type)
    exports['dxmessages']:addBox(player, text, type) -- EXPORTS DA SUA INFOBOX
end