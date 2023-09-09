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
  ["User"] = "", -- Para pegar seu ID do discord, assita esse vídeo e entenda. https://www.youtube.com/watch?v=xX-aWpqnphI
  ["Key"] = "HS-0000", -- CÓDIGO DA LICENSA DA ABA "MEUS PRODUTOS", ACESSE EM: https://hyperscripts.com.br/cliente?page=meus-produtos
}


--==================================== Config  ==================================== 

Hyper_Configs = {
    ['gerais'] = {
      ['quantidade_derrubado'] = 20;-- Esta quantidade será referente a taxa que o player terá que estar abaixo para poder ficar 'caido'.
      ['quantidade_set_life'] = 100;-- Esta quantidade será referente quando o player for 'curado'.
      ['quantidade_desanimado'] = 50;-- Esta quantidade será referente a taxa que o player terá que estar para poder ficar 'desanimado'.
      ['tempo_verificacao'] = {value = 1, formato = 1000};-- Esta quantidade será referente a taxa de verificação da vida do player. 
      ['tempo_derrubado'] = {value = 30, formato = 60000};-- Esta quantidade será referente a taxa de tempo que o player irá ficar 'caido'.
      ['tempo_derrubado_vip'] = {value = 30, formato = 1000};-- Esta quantidade será referente a taxa de tempo que o player irá ficar 'caido' se for vip.
      ['tempo_prestar_socorro'] = {value = 10, formato = 1000}; -- Esta quantidade será referente a taxa de tempo que o médico irá demorar ao prestar o socorro.
      ['tempo_remedio_tratamento'] = {quantidade_remedio = 10, value = 10, formato = 1000};-- 'quantidade_remedio' = 'quantidade de life que irá regenerar a cada tempo', 'value' = 'tempo do timer', 'formato' = 'formato do timer'.
      ['binds_maca'] = {tratamento = 'E', deitar = 'H'};-- Binds do sistema de maca: 'tratamento'  = 'bind para o player se tratar na maca', 'deitar' = 'bind para o player ficar deitado na maca'.
      ['commands'] = {curar = {'levantar', true}, chamar = {'call', true, permissao = {'Console'}, blip = {verify = true, id = 22, timer = 60, formato = 1000}}};-- Commando de levantar o player, use 'true' para deixar esta opção ativa ou 'false' para deixar está opção desativada.
      ['verificadores'] = {
        macas_interacao = false;-- Se deseja desativar o texto de Tratamento e Deitar para utilizar no sistema de interação marque como false.
        id_data = 'ID';-- ElementData do seu sistema de 'ID'.
        headshot = true,-- Utilize 'true' para deixar o sistema de headshot do sistema ativo ou utilize 'false' para deixar o headshot do sistema desativado.
        matar_derrubado = true;-- Utilize 'false' para permitir que se o player estiver 'caido' irá poder tomar dano e ser morto ou utilize 'true' para não permirir que o player tome dano ao estar 'caido'.
        desanimado = true;-- Utilize 'true' para que o player fique 'desanimado' ou utilize 'false' para desativar esta opção.
        bind_morte = {verify = true, bind = 'F5'};-- Utilize 'true' para o player ter que aperta a bind para poder morrer ou utilize 'false' para o player morrer direto sem ter que apertar a bind.
        resgates_on = {verify = true, acl = 'Console', quantidade = 1};-- Utilize 'true' para que o sistema possa reconhecer que terá que ter tal quantidade configurada de 'médicos' online para o cidadão poder não esperar o tempo total de atendimento ou utilize 'false' para desativar está opção.
        system_prancheta = {verify = false, acl = {'Console'}, dx_prancheta = {title = 'CENTRO MÉDICO', subtitle = 'LOS SANTOS'}};-- Utilize 'true' para ativar o sistema de prancheta, caso não utilize ou não queira o sistema de interação.
        system_interaction = {verify = false, name_resource = '[HS]InteractionPanel'};-- Utilize 'true' para ativar a verificação se você marcar 'true' na opção acima, para poder o sistema fechar o painel de interação ao você tentar utilizar o sistema de prancheta.
        system_aviso_maca = true; --- Utilize 'true' para ativar a verificação se o player deitar na maca os médicos serem avisados que algúem precisa de atendimento, opções configuraráveis na tabela ['commands']->['blip'] mais acima.
        system_logs = {
          verify = true, --- Utilize 'true' para ativar o sistema de logs.
          link_gif = 'https://i.imgur.com/Nqv6JQD.gif';
          log_chamar = 'https://discord.com/api/webhooks/1017417860743700530/6BVz6h1JbYJSIRKRUD4xYT8D_hhu5tG7F1LQ-M0DSR23VSeRBRQRhTh_WOr8bT1bgd8T';
          log_atendimento = 'https://discord.com/api/webhooks/1017417860743700530/6BVz6h1JbYJSIRKRUD4xYT8D_hhu5tG7F1LQ-M0DSR23VSeRBRQRhTh_WOr8bT1bgd8T';
          log_maca = 'https://discord.com/api/webhooks/1017417860743700530/6BVz6h1JbYJSIRKRUD4xYT8D_hhu5tG7F1LQ-M0DSR23VSeRBRQRhTh_WOr8bT1bgd8T';
          log_morte = 'https://discord.com/api/webhooks/1040339318826336376/xM5QSKYaCvcK5j7xLwp4W_xA8Z_ZGNwz7XhtsTs3tT4jNUZc1EgRwKqXkfelh_yUi2jZ';
          copyright = 'www.hyperscripts.com.br';
        };
      };
    };
    ['anims_list'] = {
      anim_caido = {'CRACK', 'crckidle2', verify = true};-- Tabela de animação do player caido.
      walking_desanimado = {type = 120, verify = true, blockControls = {'sprint', 'jump', 'crouch'}};-- Tabela de animação do player desanimado.
      anim_check_life = {"MEDIC", "CPR"};-- Tabela de animação ao médico checar a vida do player.
      anim_maca = {'CRACK', 'crckidle1'}; -- Tabela de animação ao player 'detar' ou 'se tratar' na maca.
    };
    ['ui_dx'] = {
      ['color_hex'] = '#649FE3';-- Color hex do dx do sistema: mais cores em: https://www.color-hex.com/ 
      ['blur'] = {name = 'Blur', value = true};--- Nome do seu sistema de 'blur' e Utilize 'true' para ativar ou 'false' para desativar.
      ['black:white'] = true; -- Se deseja utilizar o sistema da tela ficar em preto e branco na hora da morte.
    };
    ['block_teclas'] = {-- Adicione aqui a tecla que deseja bloquear quando o player estiver 'caido'.
      "arrow_l", "arrow_u","arrow_r", "arrow_d", "b", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "", "c", "d", "f", "g", "h", "i", "j", "k",
      "l", "tab","o", "q", "r", "F2", "F7", "F8", "", "F4", "num_0", "num_1", "num_2", "num_3", "num_4", "num_5",
      "num_6", "num_7", "num_8", "num_9", "num_mul", "num_add", "num_sep", "num_sub", "num_div", "num_dec", "num_enter", "F2", "F3", "",
      "F8", "F9", "F6", "F10", "escape", "backspace", "lalt", "ralt", "enter", "space", "pgup", "pgdn", "end", "home",
      "insert", "delete", "lshift", "rshift", "lctrl", "rctrl", "[", "]", "pause", "capslock", "scroll", ";", ",", "F8", "/", "F7", "\\", "="
    };
    ['damage_types'] = {-- Tipos de danos: https://wiki.multitheftauto.com/wiki/Damage_Types
      {type_damage = 16, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 35, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 36, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 37, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 18, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 39, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 9,  loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 50, loss = 50};-- Tipo de dano e valor que deseja verificar.
      {type_damage = 54, loss = 20};-- Tipo de dano e valor que deseja verificar.
    };
    ['health_conditions'] = {-- Adicione aqui a quantidade de vida e o status que irá aparecer no sistema de prancheta.
      {health = 80, status = 'Saudável'};
      {health = 40, status = 'Grave'};
      {health = 10, status = 'Crítico'};
    };
    ['system_macas'] = {-- na rotação os 3 primeiros valores são utilizados para rotacionar a maca, as demais são para rotacionar o player em cima da maca.
      {model = {true, 1997}, pos = {1380.6754150391, 443.27932739258, 19.868789672852 -1}, rot = {0, 0, 0, 245, 175}, size = 5, dim = 0, int = 0, rgb = {42, 0, 91, 0}, regenera = 10, timer = {value = 10, formato = 1000}, cobrar = {verify = false, value = 100}};
      {model = {true, 1997}, pos = {1374.5571289062, 444.84622192383, 19.875 -1}, rot = {0, 0, 0, 281, 175}, size = 5, dim = 0, int = 0, rgb = {42, 0, 91, 0}, regenera = 10, timer = {value = 10, formato = 1000}, cobrar = {verify = false, value = 100}};
    };
    ['language'] = {
      ['messages'] = {
        ['1'] = 'Atendimento Prestado';
        ['2'] = 'O Médico ${player} atendeu o paciente ${alvo}.';
        ['3'] = 'O cidadão de passaporte informado se encontra próximo de você.';
        ['4'] = 'O cidadão de passaporte informado se encontra offline no momento.';
        ['5'] = 'Digite /${command} + ID.';
        ['6'] = 'Você efetuou um chamado, aguarde que você será atendido.';
        ['7'] = 'Novo chamado';
        ['8'] = 'O cidadão ${player} efetuou um chamado.';
        ['9'] = 'Aguarde, você chamou um médico recentemente.';
        ['10'] = 'Você não está precisando de atendimento no momento.';
        ['11'] = 'Um chamado foi feito, encontre o blip no seu radar.';
        ['12'] = 'Prestando Socorro';
        ['13'] = 'Você iniciou o tratamento do paciente ${alvo} com sucesso.';
        ['14'] = 'O médico ${player} iniciou o seu tratamento e te deu um remédio com ${remedio} ml, você irá recuperar a sua vida em breve.';
        ['15'] = 'Você não possui rémedios suficientes para efetuar o tratamento do cidadão.';
        ['16'] = 'O cidadão não está precisando de tratamento no momento.';
        ['17'] = 'O cidadão já está sendo medicado.';
        ['18'] = 'Você foi levantado pelo médico ${player} com sucesso.';
        ['19'] = 'Você não pode prestar o socorro no momento.';
        ['20'] = 'O cidadão ${alvo} não precisa de atendimentos médicos.';
        ['21'] = 'O cidadão ${alvo} não está caido.';
      };
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


getPreferenceVIP = function(player)-- Função para verificar se o player é vip ou não.
  if isElement(player) and getElementType(player) == 'player' then
        if isObjectInACLGroup("user." ..getAccountName(getPlayerAccount(player)), aclGetGroup('CV')) then
            return true
        end
    end
    return false
end


setPayment = function(player, alvo, name)-- Função para dar dinheiro ao médico.
  givePlayerMoney(player, 500)
  outputMessage(player, 'Você curou o '..name..' com sucesso e ganhou R$ 500,00 .', 'success')
end


getPillsMedic = function(player)-- Função para verificar se o médico possui a quantidade informada de 'remedios' para poder efetuar as ações.
  if exports['[HS]Inventory_system_2']:getItem(player, 'bolsa_medica') >= 1 then
    return true
  end
  return false
end


takePillsMedic = function(player)-- Função para remover os 'remedios' do inventário do médico.
  exports['[HS]Inventory_system_2']:takeItem(player, 'bolsa_medica', 1)
end


outputMessage = function(elem, mess, tipo)--- Função de exportação da sua notify.
  return exports["[HS]Notify_System"]:notify(elem, mess, tipo)
end


progress_bar = function(player, mess, timer, format, color)--- Função de exportação de sua progressbar.
  return exports['[HS]Notify_System']:progress(player, tostring(mess), {timer, format}, color)-- Caso não queira utilizar o nosso sistema de progressbar, remova está linha.
end