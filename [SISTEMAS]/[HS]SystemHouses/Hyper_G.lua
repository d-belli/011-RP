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
  ["Key"] = "HS-1683309525079", -- CÓDIGO DA LICENSA DA ABA "MEUS PRODUTOS", ACESSE EM: https://hyperscripts.com.br/cliente?page=meus-produtos
}


--==================================== Config  ==================================== 


Hyper_Confgs = {
  
  
  Casas = {
    
    { 
    NomeCasa = "Mansão do Netão",-- Nome da residência.
    ValorVenda = 900000,-- Valor de venda da residência, tanto por money quanto por coins.
    Entrada = {1298.619, -799.202, 84.141 -1}, -- Posição do marker para entrar na residência.
    Saida = {1262.13, -785.375, 1091.906 -1}, -- Posição do marker para sair da residência.
    DentroCasa = {1264.348, -781.862, 1091.906},-- Posição de teleporte para dentro da casa.
    ForaCasa = {1299.163, -801.083, 84.141} ,-- Posição de teleporte para fora da casa.
    Interior = 5,--ID do interior da residência, Lista de todos os ids de interiores : https://wiki.multitheftauto.com/wiki/Interior_IDs ou http://weedarr.wikidot.com/interior .
    Desc = "CASA DE CAMPO PARA A FÁMILIA COM\nVISTA PARA O MAR",-- Descrição do texto da compra da residência. Obs: Utilize: \n, para quebra de linhas. 
    Imgs = {"magdog1.png","magdog2.png","magdog3.png"},-- Nome das pngs do diretorio: nui/casas/NomePng.png.
    DescImg = {"ENTRADA","SALA DE ESTAR","QUARTO"},-- Descrição de cada imagem acima.
    PorcentagemVenda = 10,-- Porcentagem que a imobiliária irá cobrar do valor real da casa.
    Moeda = {Coins = false, DinheiroGame = true}, -- Escolha a moeda que vai ser utilizada na compra da casa. Obs: Não marque as duas opções como true.
    }, 
   -- !
    { 
    NomeCasa = "Mansão do Ruru",-- Nome da residência. 
    ValorVenda = 300000,-- Valor de venda da residência, tanto por money quanto por coins.
    Entrada = {1252.285, -901.743, 46.594 -1},-- Posição do marker para entrar na residência.
    Saida = {2283.105, -1139.699, 1050.898 -1},-- Posição do marker para sair da residência.
    DentroCasa = {2282.923, -1138.366, 1050.898},-- Posição de teleporte para dentro da casa.
    ForaCasa = {1251.345, -902.532, 46.602},-- Posição de teleporte para fora da casa.
    Interior = 11,--ID do interior da residência, Lista de todos os ids de interiores : https://wiki.multitheftauto.com/wiki/Interior_IDs ou http://weedarr.wikidot.com/interior .
    Desc = "CASA DE CAMPO PARA A FÁMILIA COM\nVISTA PARA O MAR",-- Descrição do texto da compra da residência. Obs: Utilize: \n, para quebra de linhas. 
    Imgs = {"magdog1.png","magdog2.png","magdog3.png"},-- Nome das pngs do diretorio: nui/casas/NomePng.png.
    DescImg = {"ENTRADA","SALA DE ESTAR","QUARTO"},-- Descrição de cada imagem acima.
    PorcentagemVenda = 50,-- Porcentagem que a imobiliária irá cobrar do valor real da casa.
    Moeda = {Coins = false, DinheiroGame = true},-- Escolha a moeda que vai ser utilizada na compra da casa. Obs: Não marque as duas opções como true.
    }, 
    -- !
    {
    NomeCasa = "Mansão do Neymar",-- Nome da residência.
    ValorVenda = 500000,-- Valor de venda da residência, tanto por money quanto por coins.
    Entrada = {1331.731, -633.195, 109.135 -1},-- Posição do marker para entrar na residência.
    Saida = {1262.13, -785.375, 1091.906 -1},-- Posição do marker para sair da residência.
    DentroCasa = {1264.348, -781.862, 1091.906},-- Posição de teleporte para dentro da casa.
    ForaCasa = {1330.218, -629.855, 109.135},-- Posição de teleporte para fora da casa.
    Interior = 5,--ID do interior da residência, Lista de todos os ids de interiores : https://wiki.multitheftauto.com/wiki/Interior_IDs ou http://weedarr.wikidot.com/interior .
    Desc = "CASA DE CAMPO PARA A FÁMILIA COM\nVISTA PARA O MAR",-- Descrição do texto da compra da residência. Obs: Utilize: \n, para quebra de linhas. 
    Imgs = {"magdog1.png","magdog2.png","magdog3.png"},-- Nome das pngs do diretorio: nui/casas/NomePng.png.
    DescImg = {"ENTRADA","SALA DE ESTAR","QUARTO"},-- Descrição de cada imagem acima.
    PorcentagemVenda = 20,-- Porcentagem que a imobiliária irá cobrar do valor real da casa.
    Moeda = {Coins = false, DinheiroGame = true},-- Escolha a moeda que vai ser utilizada na compra da casa. Obs: Não marque as duas opções como true.
    }, 
    -- !
  },
  

  Hyper_Gerais = {
    
    ["BindAceitar"] = "G",-- Bind para aceitar a ação.
    ["BindCancelar"] = "U",-- Bind para cancelar a ação.
    ["DataCoins"] = "HS:Coins",-- ElementData do seu sistema de Coins.
    ["SenhaPadrão"] = "12354",-- Senha padrão das residências.
    ["Color-Hex"] = "#05A2EE",-- Cor hexadecimal, Obs: Acesse cores em: https://www.color-hex.com/color/05a2ee
    ["RGB"] = {5,162,238,80},-- Cor dos markers, Obs: Acesse cores em: https://www.color-hex.com/color/05a2ee
    ["ColorBlur"] = {Color = {21,21,21,255}, Ativar = true},-- Cor do blur, Obs: Acesse cores em: https://www.color-hex.com/color/05a2ee
    ["CmdCasas"] =  "casas", -- comando para verificar quantas casas estão á venda!
    ["System IPTU"] = {Ativar = true, Tempo = 1, LimitMaximo = 1000},-- Ativar, true ou false, Tempo em minutos, Limite do valor que se caso nao pagar o iptu não poderá entrar na resideência.
    ["QuantidadeMaximaPorPlayer"] = 1,-- Quantidade máxima de casas que um player poderá comprar.
    ["Nome Servidor"] = "HYPER RESIDÊNCIAS",-- Nome que aparecerá no dx.
    ["Blips"] = {31,32,35}, -- Casa á venda,Casa Vendida, Casa do player.
    ["DataID"] = "ID",-- ElementData do seu sistema de ID.
    ["Moedas"] = {Coins = "C$", Money = "D$"},
    
  },  
}

outputMessage = function(elem, mess, tipo)
  return exports["[HS]Infobox"]:addBox(elem, tipo, mess)
end