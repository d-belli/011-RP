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
     ['User'] = '243150048878264320', -- Para pegar seu ID do discord, assista esse vídeo e entenda. https://www.youtube.com/watch?v=xX-aWpqnphI
     ['Key'] = 'HS-1684586191422', -- CÓDIGO DA LICENÇA DA ABA 'MEUS PRODUTOS', ACESSE EM: https://hyperscripts.com.br/cliente?page=meus-produtos
}
   
   
--==================================== Config  ==================================== 


Hyper_Configs = {
     ['gerais'] = {
          ['data:id'] = 'ID';-- Elementdata do seu sistema de ID.
          ['resource:password'] = '[HS]Password';
     };
     ['gerenciadores:markers'] = {-- Configure aqui os markers dos gerenciadores. 
          {pos = {1256.3394775391, -1609.1486816406, 13.546875 - 1}, permissao = {'Console', 'Padrão'}, size = 1.5, rgb = {204, 92, 82, 100}, dim = 0, int = 0, name = 'Comando Vermelho'};
     };
     ['gerenciadores:config'] = {
          ['Padrao'] = {-- Copie daqui
               ['infos'] = {
                    ['color'] = {216, 185, 255, 255};-- Cor do grupo.
                    ['password'] = 'mudar123';
                    ['max:members'] = 10;-- Máximo de membros.
                    ['money'] = 5600;-- Valor do salário ao entrar em serviço.
                    ['timer:money'] = {value = 1, format = 60000};-- Tempo para o recebimento do salário.
                    ['adm:acl'] = {'Console'};-- Defina aqui a acl de quem poderá acessar a parte administrativa do painel.
                    ['logs:gerenciar'] = 'https://discord.com/api/webhooks/1115786201027313854/GDJlWyfChVarHWVW1Mi8Z9Ma60FsPCiOJ5X7FLF34pqGqIRak5V4GKLODXmhbF2p0JCa';
                    ['logs:entrar:servico'] = 'https://discord.com/api/webhooks/1115786201027313854/GDJlWyfChVarHWVW1Mi8Z9Ma60FsPCiOJ5X7FLF34pqGqIRak5V4GKLODXmhbF2p0JCa';
                    ['logs:sair:servico'] = 'https://discord.com/api/webhooks/1115786201027313854/GDJlWyfChVarHWVW1Mi8Z9Ma60FsPCiOJ5X7FLF34pqGqIRak5V4GKLODXmhbF2p0JCa';
                    ['logs:armas'] = 'https://discord.com/api/webhooks/1115786201027313854/GDJlWyfChVarHWVW1Mi8Z9Ma60FsPCiOJ5X7FLF34pqGqIRak5V4GKLODXmhbF2p0JCa';
                    ['logs:gif'] = 'https://i.imgur.com/Nqv6JQD.gif';-- Link do gif.
                    ['logs:copyright'] = 'www.hyperscripts.com.br';
               };
               ['Veículos'] = {
                    {name = 'Viatura 01', model = 490, warp = true, spawn = {1395.1567382812, -1470.8802490234, 8.671875}};
                    {name = 'Viatura 02', model = 490, warp = true, spawn = {1395.1567382812, -1470.8802490234, 8.671875}};
                    {name = 'Viatura 03', model = 490, warp = true, spawn = {1395.1567382812, -1470.8802490234, 8.671875}};
               };
               ['Armas'] = {
                    {name = 'Armas 01', model = 31, ammo = 1};
                    {name = 'Armas 02', model = 31, ammo = 1};
                    {name = 'Armas 03', model = 31, ammo = 1};
               };
               ['Fardas'] = {
                    {name = 'Fardas 01', model = 31};
                    {name = 'Fardas 02', model = 31};
                    {name = 'Fardas 03', model = 31};
               };
          };-- Até aqui
     };
     ['ui-dx'] = {
          ['sections'] = {-- Defina aqui o nome de cada aba, posição e se deseja que não apareça, marque como 'verify = false'.
               ['Inicio'] = {title = 'Inicio', pos = {686, 189, 31, 16}, verify = true};
               ['Veículos'] = {title = 'Veículos', pos = {747, 189, 31, 16}, verify = true};
               ['Armas'] = {title = 'Armas', pos = {815, 189, 31, 16}, verify = true};
               ['Fardas'] = {title = 'Fardas', pos = {880, 189, 31, 16}, verify = true};
               ['Gerenciar'] = {title = 'Gerenciar', pos = {954, 189, 31, 16}, verify = true};
          };
     };
     ['language'] = {-- Todas as mensagens do sistema editáveis da maneira que deseja, caso encontre algum erro de ortografia nos comunique.
          ['1'] = {'Você entrou em serviço com sucesso.', 'success'};
          ['2'] = {'Você saiu do serviço com sucesso.', 'info'};
          ['3'] = {'Você recebeu R$ ${money} por estar em serviço.', 'success'};
          ['4'] = {'O cidadão não se encontra online no momento.', 'error'};
          ['5'] = {'O cidadão já se encontra no grupo.', 'error'};
          ['6'] = {'Membro adicionado com sucesso.', 'success'};
          ['7'] = {'Você foi adicionado no grupo ${group}.', 'success'};
          ['8'] = {'Membro removido com sucesso.', 'success'};
          ['9'] = {'Este grupo excedeu o limite de membros.', 'error'};
          ['10'] = {'Entre em serviço para pode ter acesso.', 'error'};
          ['11'] = {'Você alterou a senha do portão com sucesso.', 'success'};
     };
}


--[[

╔═══════════════════════════════════════════[ www.hyperscripts.com.br ]══════════════════════════════════════════════════╗
                                                                                                                                            
 _______      ___    ___ ________  ________  ________  _________  ________  ________  ________  _______   ________      
|\  ___ \    |\  \  /  /|\   __  \|\   __  \|\   __  \|\___   ___\\   __  \|\   ____\|\   __  \|\  ___ \ |\   ____\     
\ \   __/|   \ \  \/  / | \  \|\  \ \  \|\  \ \  \|\  \|___ \  \_\ \  \|\  \ \  \___|\ \  \|\  \ \   __/|\ \  \___|_    
 \ \  \_|/__  \ \    / / \ \   ____\ \  \\\  \ \   _  _\   \ \  \ \ \   __  \ \  \    \ \  \\\  \ \  \_|/_\ \_____  \   
  \ \  \_|\ \  /     \/   \ \  \___|\ \  \\\  \ \  \\  \|   \ \  \ \ \  \ \  \ \  \____\ \  \\\  \ \  \_|\ \|____|\  \  
   \ \_______\/  /\   \    \ \__\    \ \_______\ \__\\ _\    \ \__\ \ \__\ \__\ \_______\ \_______\ \_______\____\_\  \ 
    \|_______/__/ /\ __\    \|__|     \|_______|\|__|\|__|    \|__|  \|__|\|__|\|_______|\|_______|\|_______|\_________\
             |__|/ \|__|                                                                                    \|_________|


 ╚═══════════════════════════════════════════[ www.hyperscripts.com.br ]══════════════════════════════════════════════════╝                                                                                                             

--]]


outputMessage = function(elem, mess, tipo)--- Função de exportação da sua notify.
     return exports['[HS]Notify_System']:notify(elem, mess, tipo)
end