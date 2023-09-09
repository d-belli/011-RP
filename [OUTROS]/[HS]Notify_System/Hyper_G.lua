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


Hyper_Config = {
     ['gerais'] = {       
          ['visible'] = 4; -- maxima de infobox que vao poder ficar na tela por vez (caso possua essa quantia, a primeira sera deletada)
          ['timer'] = 5; -- tempo em segundos para sumir a notificação
     },
     ['types:notify'] = {
          ['error'] = {
               ['rgb'] = {217, 65, 65};
               ['title'] = 'Erro';
               ['sound'] = 'https://cdn.discordapp.com/attachments/956396014045106207/1134848505643544596/error.wav';
          },
          ['warning'] = {
               ['rgb'] = {229, 149, 69};
               ['title'] = 'Aviso';
               ['sound'] = 'https://cdn.discordapp.com/attachments/956396014045106207/1134848505643544596/error.wav';
          }, 
          ['info'] = {
               ['rgb'] = {69, 176, 229};
               ['title'] = 'Informação';
               ['sound'] = 'https://cdn.discordapp.com/attachments/956396014045106207/1134848506021027890/info.wav';
          }, 
          ['success'] = {
               ['rgb'] = {87, 217, 130};
               ['title'] = 'Sucesso';
               ['sound'] = 'https://cdn.discordapp.com/attachments/956396014045106207/1134848741334077480/success.mp3';
          },
     };
     ['ui-colors'] = {
          ['background'] = {0, 0, 0, 120};
          ['message'] = {255, 255, 255, 255};
          ['mess:repeat'] = {179, 179, 179, 255};
          ['background:progress'] = {0, 0, 0, 60};
          ['type:notify'] = {20, 20, 20, 255};
     };
}


--[[

     EXPORT NO LADO SERVER: exports['[HS]Notify_System']:notify(player, 'Nova atualização de nossa infobox!', 'success')

     EXPORT NO LADO CLIENT: exports['[HS]Notify_System']:notify('Nova atualização de nossa infobox!', 'success')

--]]