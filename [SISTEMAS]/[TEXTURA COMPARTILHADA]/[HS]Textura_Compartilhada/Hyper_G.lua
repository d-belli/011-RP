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
     ['Key'] = 'HS-1659462905181', -- CÓDIGO DA LICENÇA DA ABA 'MEUS PRODUTOS', ACESSE EM: https://hyperscripts.com.br/cliente?page=meus-produtos
}
   

--==================================== Config  ==================================== 


Hyper_Config = {
     ['gerais'] = {
          ['set:plotting'] = {acl = true, elementData = {data = 'HS:plotting', verify = false}};
     };
     ['models:config'] = {
          {permision = {'Console'}; model = 490; plotting = 'nui/plots/ranger-pmerj.png'};
          {permision = {'Console'}; model = 490; plotting = 'nui/plots/ranger-prf.png'};
          {permision = {'Console'}; model = 602; plotting = 'nui/plots/CorollaPcerj.png'};
          {permision = {'Console'}; model = 602; plotting = 'nui/plots/CorollaPmesp.png'};
          {permision = {'Console'}; model = 581; plotting = 'nui/plots/XtPmerj.png'};
          {permision = {'Console'}; model = 581; plotting = 'nui/plots/Xtpmesp.png'};
          {permision = {'Console'}; model = 487; plotting = 'nui/plots/HeliBope.png'};
          {permision = {'Console'}; model = 487; plotting = 'nui/plots/HeliEB.png'};
     };
     ['mapsTextures'] = {
          [ 490 ] = {'map'};
          [ 602 ] = {'map'};
          [ 581 ] = {'map'};
          [ 487 ] = {'map'};
     };
}


--[[

╔======================================================= * Tutorial de como adicionar outros veículos * =======================================================╗


 1º - Abra o arquivo .txd e procure pelo nome da imagem que cobre o veículo inteiro, por exemplo: 'map'.
 2º - Agora na tabela ['mapsTextures'] do nosso arquivo de textura compartilhada, adicione o modelo do veículo e o nome que você encontrou no txd do veículo.
 3º - Na tabela ['models:config'] configure a permissão acl ( para isso a verificação da tabela ['set:plotting']['acl'] esteja true ).
 3.1º - Configure o modelo do veículo correspondente a acl e o mapeamento da mesma, após configure a plotagem desejada nesta mesma linha da tabela. 


╚======================================================= * Tutorial de como adicionar outros veículos * =======================================================╝

--]]