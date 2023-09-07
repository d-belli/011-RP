--[[
===========================================================
# Minha página: https://www.facebook.com/TioSteinScripter/#
# ╔════╗╔══╗╔═══╗╔═══╗╔════╗╔═══╗╔══╗╔═╗─╔╗#
# ║╔╗╔╗║╚╣─╝║╔═╗║║╔═╗║║╔╗╔╗║║╔══╝╚╣─╝║║╚╗║║#
# ╚╝║║╚╝─║║─║║─║║║╚══╗╚╝║║╚╝║╚══╗─║║─║╔╗╚╝║#
# ──║║───║║─║║─║║╚══╗║──║║──║╔══╝─║║─║║╚╗║║#
# ──║║──╔╣─╗║╚═╝║║╚═╝║──║║──║╚══╗╔╣─╗║║─║║║#
# ──╚╝──╚══╝╚═══╝╚═══╝──╚╝──╚═══╝╚══╝╚╝─╚═╝#
===========================================================
--]]

function andar()
    setPedControlState(localPlayer, "walk", true)
    setPedControlState(localPlayer, "sprint", false)
end
bindKey("w","down", andar)
bindKey("space","up", andar)

function correr()
    setPedControlState(localPlayer, "walk", false)
    setPedControlState(localPlayer, "sprint", true)
end
bindKey("space","down", correr)