 --[[


 ################################################
 #                                              #                                                  
 #             SCRIPT DESENVOLVIDO POR:         #
 #             Facebook.com/FENIXMTA/           #
 #             Youtube.com/FENIXMTA             #
 #             Não retire os créditos !         #
 #                                              #
 ################################################




 --]]
 
function saveClothes()
    local account = getPlayerAccount(source)
    if ( not isGuestAccount(account) ) and ( getElementModel(source) == 0 ) then
        local texture = {}
        local model = {}
        for i=0, 17, 1 do
            local clothesTexture, clothesModel = getPedClothes(source, i)
            if ( clothesTexture ~= false ) then
                table.insert(texture, clothesTexture)
                table.insert(model, clothesModel)
            else
                table.insert(texture, " ")
                table.insert(model, " ")
            end 
        end
        local allTextures = table.concat(texture, ",")
        local allModels = table.concat(model, ",")
        outputDebugString("Clothessaver: Saved clothes")
        setAccountData(account, "Clothessaver:Texture", allTextures)
        setAccountData(account, "Clothessaver:Model", allModels)
        texture = {}
        model = {}
    end
end
addEventHandler("onPlayerQuit", getRootElement(), saveClothes)
addEventHandler ( 'onPlayerLogout', root,saveClothes)

function setClothes()
    local account = getPlayerAccount(source)
    if ( not isGuestAccount(account) ) then
        local textureString = getAccountData(account, "Clothessaver:Texture")
        local modelString = getAccountData(account, "Clothessaver:Model")
        local textures = split(textureString, 44)
        local models = split(modelString, 44)
        for i=0, 17, 1 do
        if ( textures[i+1] ~= " " or textures[i+1] ~= nil ) then
                addPedClothes(source, textures[i+1], models[i+1], i)
            end
        end
        outputChatBox("Clothes were added by clothessaver", source, 0, 255, 0)
        textures = {}
        models = {}
    end
end
addEventHandler("onPlayerLogin", getRootElement(), setClothes)
