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
  ["User"] = "243150048878264320", -- Para pegar seu ID do discord, assista esse vídeo e entenda. https://www.youtube.com/watch?v=xX-aWpqnphI
  ["Key"] = "HS-1688668347629", -- CÓDIGO DA LICENSA DA ABA "MEUS PRODUTOS", ACESSE EM: https://hyperscripts.com.br/cliente?page=meus-produtos
}


--==================================== Config  ====================================  


Hyper_Configs = {
    ['gerais'] = {
      ['accounts_max'] = 1;-- Esta quantidade será a quantidade máxima de contas que um player poderá criar.
      ['data:logged'] = 'HS:logged',-- Elementdata que irá verificar se o player está ou não logado.
    };
    ['ui-dx'] = {
      ['color_server'] = {157, 189, 217, 255};-- Cor rgb do seu servidor, para cores rgb consulte em: https://www.color-hex.com/
      ['color_confirm'] = {97, 130, 126, 255};-- Cor rgb das ações de confirmação, para cores rgb consulte em: https://www.color-hex.com/
      ['selects'] = {89, 102, 122, 255};-- Cor rgb de seleção nas opções de: usuário, senha e contas, para cores rgb consulte em: https://www.color-hex.com/
      ['sections'] = {login = 'Logar-se', register = 'Registrar-se', recovery = {title = 'Recuperar', verify = true, info = 'Aba desativada'}, color = {112, 116, 122, 255}};-- Nome de cada aba: login, register e recovery, recovery = verify, se esta opções estiver marcada então irá funcionar o sistema de recuperação, recovery = info, é a mensagem personalizada caso não deseja o sistema de recuperação, color é a cor dos textos de cada aba.
      ['termos'] = {desc = 'Sou maior de 16 anos para jogar.', color = {112, 116, 122}};-- Descrição do termo ao player registrar uma conta, color é a cor do texto dos termos.
      ['save_pass'] = {desc = 'Lembrar meus #8BA7C0dados.'};-- descrição da caixa de seleção se o player deseja salvar o login e senha na hora de logar.
      ['background'] = {verify = true, color_gradiente = {255, 255, 255, 100}, matrix = {2128.6547851562, 1876.3173828125, 20.27379989624, 2127.9392089844, 1877.0134277344, 20.215707778931}};-- Se estiver marcado como verify = true, então irá aparecer um background personalizado, caso esteja verify = false funcionará uma camera que passará a imagem em tempo real em uma determinada posição em seu servidor.
      ['loading'] = 'Verificando dados.';-- descrição do texto da loading.
      ['smooth:login'] = true;-- Se estiver marcado como 'true' o sistema irá executar uma câmera quando o player logar, semelhante ao FiveM.
      ['loadscreen'] = {verify = false, text = 'Baixando recursos', nameresources = false};-- Caso esteja marcado como verify = true. 
      ['sound'] = {verify = true, music = 'https://server1.mtabrasil.com.br/youtube/play?id=69-jnA4QLSM';-- verify, se deseja deixar ativo a música no login, utilize 'true', music é o link ou diretório da sua música, neste exemplo utilizamos o site: https://site.mtabrasil.com.br/musicas/ 
        title = 'Poesia Acústica #13 - Mc Cabelinho,Tz da Coronel,Oruam,L7NNON,Chefin,N.I.N.A,Chris,Xamã,Luisa Sonza';-- Título da sua música.
        size_title = 400;-- Se o seu título da sua música acima for muito grande, aqui você ajusta a largura da caixa do texto.
        thumbnail = {verify = true, diretorio = 'nui/interface/thumbnail.png'};-- verify, se deseja que apareca uma capa personalizada da sua música marque como 'true', diretorio se marcado como verify = true, coloque o diretorio personalizado da sua capa da sua música.
      };
      ['change_logs'] = {-- Adicione aqui a descrição das novidades do seu servidor, obs: mantenha a ordem dos 'números ao lado', adicione o quanto quiser.
        ['descrição'] = {
          [1] = {desc = '- Novo painel de login.'};
          [2] = {desc = '- Sistema de recuperação de contas.'};
          [3] = {desc = '- Novo design.'};
          [4] = {desc = '- Banco de dados para salvar suas senhas.'};
          [5] = {desc = '- Logs no discord de ações: login, registro e recuperação.'};
          [6] = {desc = '- Logs no discord de ações: login, registro e recuperação.'};
          [7] = {desc = '- Novo painel de login.'};
          [8] = {desc = '- Sistema de recuperação de contas.'};
          [9] = {desc = '- Novo design.'};
          [10] = {desc = '- Banco de dados para salvar suas senhas.'};
          [11] = {desc = '- Logs no discord de ações: login, registro e recuperação.'};
          [12] = {desc = '- Logs no discord de ações: login, registro e recuperação.'};
        };
        ['data'] = '09/05/2023';-- Data que foi feita as novas atualizações.
        ['change_desc'] = 'Última atualização';-- Texto ao lado da data das atualizações.
      };
    };
    ['language'] = {-- Altere aqui todas as mensagens do sistema.
      ['incorrect'] = 'Usuário ou senhas incorretos.';
      ['success'] = 'Você logou com sucesso.';
      ['account_success'] = 'Conta registrada com sucesso.';
      ['account_already_registered'] = 'Conta já registrada, tente outro usuário.';
      ['passwords_do_not_match'] = 'As senhas não correspondem, coloque a confirmação da senha corretamente.';
      ['you_changed_your_account_password'] = 'Você trocou a senha da sua conta ${user} com sucesso.';
      ['accounts_max'] = 'Você possui o limite máximo de contas registradas no servidor.';
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