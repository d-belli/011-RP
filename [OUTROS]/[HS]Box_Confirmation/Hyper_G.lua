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
        ['color_button'] = {37, 137, 203, 200};
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