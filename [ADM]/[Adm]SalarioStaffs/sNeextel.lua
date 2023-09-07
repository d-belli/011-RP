--╭━╮╱╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮╱╱╱╱╱╭╮╱--
--┃┃╰╮┃┃╱╱╱╱╱╱╱╱╱╱╱╱╭╯╰╮╱╱╱╱┃┃╱--
--┃╭╮╰╯┃╭━━╮╭━━╮╭╮╭╮╰╮╭╯╭━━╮┃┃╱--
--┃┃╰╮┃┃┃┃━┫┃┃━┫╰╋╋╯╱┃┃╱┃┃━┫┃┃╱--
--┃┃╱┃┃┃┃┃━┫┃┃━┫╭╋╋╮╱┃╰╮┃┃━┫┃╰╮--
--╰╯╱╰━╯╰━━╯╰━━╯╰╯╰╯╱╰━╯╰━━╯╰━╯--
--╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱--
--╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱--
--     Script feito por neextel.#4966

---------------------- ACL1 ----------------------

setTimer(function()
    for _, player in ipairs(getElementsByType("player")) do
        local ACL = getAccountName(getPlayerAccount(player))
        if isObjectInACLGroup('user.'..ACL, aclGetGroup(ACLs.acl1)) then
    givePlayerMoney(player, Config.salario1)
    exports.asrp_notify:addBox(player, Texto.mensagem1, "success")
        end
    end
end, Tempo.tempo1, 0)

---------------------- ACL2 ----------------------
setTimer(function()
    for _, player in ipairs(getElementsByType("player")) do
        local ACL = getAccountName(getPlayerAccount(player))
        if isObjectInACLGroup('user.'..ACL, aclGetGroup(ACLs.acl2)) then
    givePlayerMoney(player, Config.salario2)
    exports.asrp_notify:addBox(player, Texto.mensagem2, "success")
        end
    end
end, Tempo.tempo2, 0)

---------------------- ACL3 ----------------------

setTimer(function()
    for _, player in ipairs(getElementsByType("player")) do
        local ACL = getAccountName(getPlayerAccount(player))
        if isObjectInACLGroup('user.'..ACL, aclGetGroup(ACLs.acl3)) then
    givePlayerMoney(player, Config.salario3)
    exports.asrp_notify:addBox(player, Texto.mensagem3, "success")
        end
    end
end, Tempo.tempo3, 0)

---------------------- ACL4 ----------------------

setTimer(function()
    for _, player in ipairs(getElementsByType("player")) do
        local ACL = getAccountName(getPlayerAccount(player))
        if isObjectInACLGroup('user.'..ACL, aclGetGroup(ACLs.acl4)) then
    givePlayerMoney(player, Config.salario4)
    exports.asrp_notify:addBox(player, Texto.mensagem4, "success")
        end
    end
end, Tempo.tempo4, 0)

---------------------- ACL5 ----------------------

setTimer(function()
    for _, player in ipairs(getElementsByType("player")) do
        local ACL = getAccountName(getPlayerAccount(player))
        if isObjectInACLGroup('user.'..ACL, aclGetGroup(ACLs.acl5)) then
    givePlayerMoney(player, Config.salario5)
    exports.asrp_notify:addBox(player, Texto.mensagem5, "success")
        end
    end
end, Tempo.tempo5, 0)