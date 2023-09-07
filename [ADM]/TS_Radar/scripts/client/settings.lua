--[[
===========================================================
# Minha página: https://www.facebook.com/TioSteinScripter/#
#      ╔════╗╔══╗╔═══╗     ╔═══╗╔════╗╔═══╗╔══╗╔═╗─╔╗     #
#      ║╔╗╔╗║╚╣─╝║╔═╗║     ║╔═╗║║╔╗╔╗║║╔══╝╚╣─╝║║╚╗║║     #
#      ╚╝║║╚╝─║║─║║─║║     ║╚══╗╚╝║║╚╝║╚══╗─║║─║╔╗╚╝║     #
#      ──║║───║║─║║─║║     ╚══╗║──║║──║╔══╝─║║─║║╚╗║║     #
#      ──║║──╔╣─╗║╚═╝║     ║╚═╝║──║║──║╚══╗╔╣─╗║║─║║║     #
#      ──╚╝──╚══╝╚═══╝     ╚═══╝──╚╝──╚═══╝╚══╝╚╝─╚═╝     #
===========================================================
--]]

Radar = {
    Map = {
        Size = {
            Width = sW * 0.8,
            Height = sH * 0.8,
        },
        Zoom = 2,
    },
    GPS = {
        Size = {
            Width = sW * 0.175,
            Height = sH * 0.2,
        },
        Margin = sH * 0.015,
    },
    Color = {
        Border = tocolor(43, 44, 46, 255),
        Background = tocolor(125, 168, 210, 255),
        Path = tocolor(184, 140, 255),
        BlipListBG = tocolor(43, 44, 46, 255),
        BlipNameBG = tocolor(43, 44, 46, 255),
        BlipName = tocolor(125, 168, 210, 255),
    },
    UseTextures = true, -- se ativado consome menos CPU, mas alguns computadores podem não suportar
    CursorBlipNames = true, -- exibe o nome do blip ao passar o cursor em cima deles
    BlipSize = 25, -- tamanho dos blips
    AutomaticallyRemakeRoute = false,
    visibleInVehicle = true, --- Aparecer somento no veiculo
    BorderRadius = 3,
    PathRadius = 5,
    CustomBlips = {
        {Name = 'Você', File = 'arrow.png'},
        {Name = 'Ammu-nation', File = 'ammunation.png'},
        {Name = 'ATM', File = 'atm.png'},
        {Name = 'Cabaré', File = 'cabare.png'},
        {Name = 'Delegacia', File = 'delegacia.png'},
        {Name = 'Farmácia', File = 'farmacia.png'},
        {Name = 'Garagem', File = 'garagem.png'},
        {Name = 'Hospital', File = 'hospital.png'},
        {Name = 'Mercado', File = 'market.png'},
        {Name = 'Oficina Mecânica', File = 'mecanica.png'},
        {Name = 'Posto de gasolina', File = 'posto.png'},
        {Name = 'Loja de roupas', File = 'shirt.png'},
        {Name = 'Venda de drogas', File = 'weed.png'},
        {Name = 'Objetivo', File = 'target.png'},
    },
    Texture = '/assets/map.png',
}