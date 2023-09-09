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


Hyper_Configs = {
    ['gerais'] = {
        ['color_hex'] = '#0075D2';-- Color hex que irá aparecer no chat: https://www.color-hex.com/
        ['color_rgb'] = {229, 65, 205};-- Cor RGB que irá representar a cor do seu servidor.
        ['color_background'] = {28, 28, 28, 255};-- Cor RGB + opacidade da cor de fundo do circulo.
        ['color_icons'] = {89, 89, 89, 255};-- Cor RGB + opacidade dos icones do circulo.
        ['outline'] = {name = '[HS]Outline', verify = true, color_outline = {229, 65, 205}};-- Nome do arquivo, Se deseja ativar o sistema marque como 'true', Cor RGB que irá contornar o elemento.
        ['data_id'] = 'ID';-- Elementdata do seu sistema de ID.
        ['open:interaction'] = {click = false, bind = {verify = true, bind = 'lalt', distance = 4.0}, command = {verify = false, command = 'open', distance = 4.0}};-- 3 opções para você conseguir abrir o painel: click, bind e comando.
        ['sounds'] = {mouse = true, select = true};-- Se deseja desativar o som ao passar o mouse nos icones marque como: 'false'.
        ['timer:actions'] = {timer = 10, format = 1000};-- Este timer é referente as ações efetuadas em cada opção do painel. lista de formatos: 1000 = 'segundos', 60000 = 'minutos'.
        ['resources'] = {policial = true, resgate = true, bandido = true, porta_malas = true, inventory = true};-- Caso não tenha alguns dos sistemas
        ['types:verify'] = {vehicle = true, player = true, object = true};-- Se deseja desativar algum type das tabelas abaixo, escolha o type e marque como 'false'.
    };
    ['types'] = {
      ['vehicle'] = {-- O limite de funções por padrão é de 8 funções. Caso adicione mais funções não irá aparecer no circulo.
        {name = 'Porta malas', acl = {'Everyone'}, icon = 'nui/icons/trunk.png', position = {665, 228, 30, 30}, mouse_select = {637, 216, 89, 62}};
        {name = 'Trancar/Destrancar', acl = {'Everyone'}, icon = 'nui/icons/key.png', position = {773, 275, 38, 38}, mouse_select = {752, 255, 86, 68}};
        {name = 'Ligar/Desligar', acl = {'Everyone'}, icon = 'nui/icons/engine.png', position = {799, 371, 44, 44}, mouse_select = {776, 355, 86, 68}};
        {name = 'Fárois', acl = {'Everyone'}, icon = 'nui/icons/light.png', position = {771, 463, 34, 34}, mouse_select = {745, 442, 86, 68}};
      };
      ['player'] = {-- O limite de funções por padrão é de 8 funções. Caso adicione mais funções não irá aparecer no circulo.
        {name = 'Revistar', acl = {'Everyone'}, icon = 'nui/icons/search.png', position = {667, 231, 30, 30}, mouse_select = {637, 216, 89, 62}};
        {name = 'Prestar atendimento', acl = {'Samu'}, icon = 'nui/icons/health.png', position = {759, 264, 57, 57}, mouse_select = {752, 255, 86, 68}};
        {name = 'Algemar', acl = {'Policial', 'Bandido'}, icon = 'nui/icons/handcuff.png', position = {806, 375, 37, 30}, mouse_select = {776, 355, 86, 68}};
        {name = 'Tablet', acl = {'Policial'}, icon = 'nui/icons/tablet.png', position = {773, 463, 30, 30}, mouse_select = {745, 442, 86, 68}};
        {name = 'Agarrar', acl = {'Policial', 'Bandido'}, icon = 'nui/icons/agarrar.png', position = {641, 480, 85, 85}, mouse_select = {630, 487, 109, 70}};
        {name = 'Conduzir', acl = {'Policial', 'Bandido'}, icon = 'nui/icons/trunk.png', position = {560, 459, 37, 37}, mouse_select = {534, 437, 88, 79}};
        {name = 'Assaltar', acl = {'Bandido'}, icon = 'nui/icons/robbery.png', position = {512, 364, 65, 65}, mouse_select = {501, 353, 88, 79}};
        {name = 'Enviar dinheiro', acl = {'Everyone'}, icon = 'nui/icons/money.png', position = {560, 278, 30, 30}, mouse_select = {527, 257, 88, 79}};
      };
      ['object'] = {-- O limite de funções por padrão é de 8 funções por modelo. Caso adicione mais funções não irá aparecer no circulo.
        [964] = {
          {name = 'Abrir baú', acl = {'Everyone'}, icon = 'nui/icons/box.png', position = {658, 223, 43, 43}, mouse_select = {637, 216, 89, 62}};
        };
        [1997] = {
          {name = 'Tratamento', acl = {'Everyone'}, icon = 'nui/icons/bi_bandaid.png', position = {662, 228, 35, 35}, mouse_select = {637, 216, 89, 62}};
          {name = 'Deitar', acl = {'Everyone'}, icon = 'nui/icons/remove.png', position = {773, 275, 30, 30}, mouse_select = {752, 255, 86, 68}};
        };
      };
    };
    ['resources_exports'] = {-- Adicione aqui todo nome de arquivo que utilizará exports. Criamos isso para evitar que dê erro ao tentar utilizar um sistema que não esteja ativo para poder acionar as exports dos mesmos.
      {resource_name = '[HS]PolicialSystem_2'};
      {resource_name = '[HS]Inventory_system_2'};
      {resource_name = '[HS]Revist_Inventory'};
      {resource_name = '[HS]Trunk'};
      {resource_name = '[HS]FacSystem'}; 
      {resource_name = '[HS]circle_progress'}; 
      {resource_name = '[HS]Samu_System'};
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
  return exports["[HS]Notify_System"]:notify(elem, mess, tipo)
end