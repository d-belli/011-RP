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


--==================================== License  ====================================  


configLicense = {
    ["User"] = "243150048878264320", -- Para pegar seu ID do discord, assita esse vídeo e entenda. https://www.youtube.com/watch?v=xX-aWpqnphI
    ["Key"] = "HS-1686083929488", -- CÓDIGO DA LICENSA DA ABA "MEUS PRODUTOS", ACESSE EM: https://hyperscripts.com.br/cliente?page=meus-produtos
}


--==================================== Config  ==================================== 


Hyper_Config = {
    ['gerais'] = {
        ['connection'] = {
            ['type'] = 'sqlite';-- Se deseja utiliza o banco de dados sqlite utilize 'sqlite', se deseja utilizar o banco de dados externo mysql utilize 'mysql'.
            ['db_name'] = '';-- Caso esteja marcado acima como 'mysql', coloque aqui o nome da sua database.
            ['host'] = '';-- Caso esteja marcado acima como 'mysql', coloque aqui o IP do seu banco de dados.
            ['user'] = '';-- Caso esteja marcado acima como 'mysql', coloque aqui o nome do seu usuário do seu banco de dados.
            ['password'] = '';-- Caso esteja marcado acima como 'mysql', coloque aqui a senha do seu banco de dados.
        };
        ['data_id'] = 'ID';-- elementData do sistema de ID.
        ['pos_inicial'] = {verify = true, pos = {1478.0493164062, -1740.1042480469, 13.546875}, rot = 90};-- Se tiver sistema de custom deixem em verify = false, se não tiver deixe em verify = true, Posição inicial que o player irá spawnar assim que logar pela primeira vez.
        ['interior'] = 0;-- Interior que será setado ao logar pela primeira vez na cidade.
        ['dimensão'] = 0;-- Dimensão que será setado ao logar pela primeira vez na cidade.
        ['skin'] = 10;-- Skin que será setado ao logar pela primeira vez na cidade, caso esteja com o verify = true em ['pos_inicial'] mais acima.
        ['money'] = 150; -- Valor de dinheiro que será setado ao player logar pela primeira vez na cidade.
        ['color_server'] = {rgb = {41, 134, 204, 255}, hex = '#7753D5'};-- Cor rgb do seu servidor e cor hexadecimal, para mais cores consulte em: https://www.color-hex.com/
        ['id_inicial'] = 100;-- Este valor será definido assim que um player registrar pela primeira vez na cidade o ID começará apartir deste valor.
        ['tag_id'] = {verify = true, format = '(${id})', color = {167, 151, 222, 255}, distance = 20};-- Se deseja que não apareça o id em cima da cabeça do player marque verify = false, Se deseja alterar o formato que apareçe em cima da cabeça do player lembre-se que não pode alterar as chaves '${id}' só o que está antes ou depois destas chaves.
        ['talking'] = {verify = true, format = 'Falando..', color = {157, 189, 217, 255}, distance = 20};-- Se deseja que não apareça o texto 'Faland..' em cima da cabeça do player marque verify = false, Altere o texto que irá aparecer assim que o player estiver falando. 
        ['tag_id:view'] = {bind_options = {bind = 'F12', state = 'both', verify = false, timer = {value = 5, format = 1000, verify = false}}};-- Se deseja que somente apareça os IDS na cabeça dos players ao apertar a BIND F12 da print, marque como verify = 'true'.
        ['cursor'] = {bind = 'x', verify = true};-- Bind do cursor, Se deseja desativar deixe como verify = false.
        ['thirst_hunger'] = {-- Se não deseja o sistema de fome e sede marque verify = false, remove_hunger/remove_thirst valor que irá remover ao timer do fome e sede executar.
            verify = true, remove_hunger = 1, remove_thirst = 1, remove_life_hunger = 2, remove_life_thirst = 2, data_hunger = 'hunger', data_thirst = 'sede',
            tempo_verify = {tempo = 1, format = 60000},-- Tempo_verify tempo que o timer irá verificar e remover a fome ou sede do player.
            verify_datas = {hunger = 10, thirst = 10};-- Este valores são necessários para o sistema começar a mandar mensagem para o player e avisar que ele está com fome ou sede e retirar a quantidade de vida do player até ele ficar o valor acima deste valores configurados.
            permissao = {'Console', 'Admin'};-- Se estiver nessas acls listadas em tabela o player não irá perder fome nem sede.
        };
        ['saves'] = {
            spawn = true;-- Se deseja desativar o sistema de spanw ao entrar no servidor, deixe em false.
            weapons = true;-- Se deseja desativar que o sistema salve as armas do player, deixe em false.
            shield = true;-- Se deseja desativar que o sistema salve o colete do player, deixe em false.
            skins = true; -- Se deseja desativar que o sistema salve a skin do personagem ao logar pela primeira vez ou toda vez no servidor.
        };
        ['gif_webhook'] = 'https://i.imgur.com/Nqv6JQD.gif';-- Link da sua gif para o sistema de logs.
        ['copyrights'] = 'www.hyperscripts.com.br';
        ['wasted'] = {verify = true};-- Se deseja desativar o evento de morte deste sistema marque verify = false.
        ['spawns_wasted'] = {-- Aqui serão posições aleátorias que o player irá spawnar assim que morrer.
            {pos = {1181.22265625, -1322.8891601562, 13.584057807922}, rot = 269, int = 0, dim = 0}; -- Posição e rotação. 
            {pos = {1173.0522460938, -1323.3818359375, 15.397048950195}, rot = 269, int = 0, dim = 0}; -- Posição e rotação. 
        };
    };
    ['comandos_staff'] = {
        ['set_id'] = {command = 'setid', permissao = {'Everyone'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['ver_id'] = {command = 'id', permissao = {'Everyone'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['set_tag'] = {command = 'tag', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['remove_tag'] = {command = 'removetag', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['teleporte'] = {command = 'tp', tp_veh = true, permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['puxar'] = {command = 'puxar', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['set_all'] = {command = 'setall', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['set_life'] = {command = 'life', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['flying'] = {command = 'fly', permissao = {'Console', 'Admin'}, invisible = true, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['invisible'] = {command = 'invisivel', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['skin'] = {command = 'skin', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['veiculo'] = {command = 'veiculo', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['pos'] = {command = 'pos', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['rot'] = {command = 'rot', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['matrix'] = {command = 'matrix', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['ir_pos'] = {command = 'irpos', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['veh_prox'] = {command = 'veh', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['fix_prox'] = {command = 'fixprox', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['fix_id'] = {command = 'fix', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['wall'] = {command = 'wall', color_text = {255, 255, 255, 255}, distance = 10000, permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['call_staff'] = {command = 'staff', permissao = {'Console', 'Admin'}, resName = '[HS]Request_confirmation', timer = 10, format = 1000, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['god'] = {command = 'pro', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['destroy:vehicle:prox'] = {command = 'dvprox', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['destroy:vehicle'] = {command = 'dv', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['destroy:not:vehicles'] = {command = 'destroydesocupados', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['size:type'] = {command = 'size', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['setMoney'] = {command = 'setmoney', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['setMoneyAll'] = {command = 'setmoneyall', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['clearChat'] = {command = 'clear', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['weapons'] = {command = 'arma', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['backup_ids'] = {command = 'backupids', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
        ['mods_start'] = {inserir = 'cadastrarmods', resetdb = 'resetdb', ativarmods = 'ativar', verify_onResourceStart = true, permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/1100940341667958815/bVM0tCUg_q9JRV1xv9YiQYR8ZMPUfUcVIrduGPdOF_rMnEZt9hnIfbfBzlcmr907SsNf'};
        ['anunciar'] = {command = 'anunciar', permissao = {'Console', 'Admin'}, link = 'https://discord.com/api/webhooks/989907168729923665/c3Dk1XpvgmiqEEFykdiJp3Dj6B-GkybRcgTIXVPX0Xg-lMaYtVzVP-40kCGEbLqBnT31'};
    };
    ['messages'] = {
        ['1'] = {'Seja bem vindo em nossa cidade, leia as regras do servidor.', 'info'};
        ['2'] = {'Seja bem vindo novamente em nossa cidade.', 'info'};
        ['3'] = {'Se alimente urgente, você está com bastante fome e está perdendo vida.', 'error'};
        ['4'] = {'Beba algum líquido urgente, você está desidratado e está perdendo vida.', 'error'};
        ['5'] = {'Resources ativados com sucesso no servidor.', 'success'};
        ['6'] = {'Não há nenhum resource em nosso banco de dados insira os resouces com o comando /', 'error'};
        ['7'] = {'Os resources listados no banco de dados já estão todos ativos.', 'error'};
        ['8'] = {'Resources excluidos com sucesso do banco de dados.', 'success'};
    };
}


--[[

╔═══════════════════════════════════════════[ www.hyperscripts.com.br ]════════════════════════════════════════════════════════╗
                                                                                                                                            
                      _______      ___    ___ ________  ________  ________  _________  ________      
                     |\  ___ \    |\  \  /  /|\   __  \|\   __  \|\   __  \|\___   ___\\   ____\     
                     \ \   __/|   \ \  \/  / | \  \|\  \ \  \|\  \ \  \|\  \|___ \  \_\ \  \___|_    
                      \ \  \_|/__  \ \    / / \ \   ____\ \  \\\  \ \   _  _\   \ \  \ \ \_____  \   
                       \ \  \_|\ \  /     \/   \ \  \___|\ \  \\\  \ \  \\  \|   \ \  \ \|____|\  \  
                        \ \_______\/  /\   \    \ \__\    \ \_______\ \__\\ _\    \ \__\  ____\_\  \ 
                         \|_______/__/ /\ __\    \|__|     \|_______|\|__|\|__|    \|__| |\_________\


 ╚═══════════════════════════════════════════[ www.hyperscripts.com.br ]════════════════════════════════════════════════════════╝                                                                                                             

--]]


playerLogin = function( player )
    setElementData( player, 'HS:logged', true )
end

outputMessage = function(elem, mess, tipo)--- Função de exportação da sua notify.
    return exports['[HS]Notify_System']:notify(elem, mess, tipo)
end