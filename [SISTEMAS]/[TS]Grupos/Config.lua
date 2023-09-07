--[[
 ______    ______      _____       ____        ______                 
/\__  _\  /\__  _\    /\  __`\    /\  _`\     /\  _  \     /'\_/`\    
\/_/\ \/  \/_/\ \/    \ \ \/\ \   \ \,\L\_\   \ \ \L\ \   /\      \   
   \ \ \     \ \ \     \ \ \ \ \   \/_\__ \    \ \  __ \  \ \ \__\ \  
    \ \ \     \_\ \__   \ \ \_\ \    /\ \L\ \   \ \ \/\ \  \ \ \_/\ \ 
     \ \_\    /\_____\   \ \_____\   \ `\____\   \ \_\ \_\  \ \_\\ \_\
      \/_/    \/_____/    \/_____/    \/_____/    \/_/\/_/   \/_/ \/_/
                                                     
                         » CopyRight © 2022
                 » Meu discord discord.gg/sY5wHR8hW3                                                                          
]]--

configLicense = {
    ["User"] = "243150048878264320", -- ID DO USUARIO
    ["Key"] = "176-F69-305-E5D-TIOSAM", -- KEY DO USUARIO
}

--====================================[ IMPORTANTES ]================================================

config = { 

    importante = {
	
        comandoCriar = 'criargrupo'; -- COMANDO PARA CRIAR O GRUPO
        comandoExcluir = 'excluirgrupo'; -- COMANDO PARA EXCLUIR O GRUPO
        teclaPaineis = 'f5'; -- TECLA PARA ABRIR O PAINEL DE CONVITES, E SE VOCE ESTIVER EM UM GRUPO, PARA ABRIR O PAINEL DELE
        bancoDelay = 10; -- DELAY PARA REALIZAR OUTRA OPERACAO COM O BANCO ( EM SEGUNDOS )
        convidarDelay = 30; -- DELAY PARA CONVIDAR UMA PESSOA NOVAMENTE PARA O GRUPO ( EM SEGUNDOS )
        corDesign = {45, 179, 255}; -- COR DO DESIGN EM RGB
        corDesignHEX = "#2DB3FF"; -- COR DO DESIGN EM HEX
		
    }; 
	
    tipo = {
        ['Corporacao'] = 'Policial'; -- SE FOR SELECIONADO CORPORAÇÃO QUANDO FOR CRIAR O GRUPO, IRA SETAR ALEM DA TAG DO GRUPO EM ESPECIFICO A TAG DE POLICIAL TAMBEM
        ['Faccao'] = 'Gang'; -- SE FOR SELECIONADO FACÇÃO QUANDO FOR CRIAR O GRUPO, IRA SETAR ALEM DA TAG DO GRUPO EM ESPECIFICO A TAG DE GANG TAMBEM
    };	

    permissao = { -- ACL QUE PODE CRIAR OU EXCLUIR GRUPOS
        'Console';  
    }; 
	
--====================================[ CONFIGURAÇÃO DOS GRUPOS ]========================================== 
	
    imagensGrupo = { -- NOME DO GRUPO , DIRETORIO DA IMAGEM DA LOGO DO GRUPO
        ['Policia Militar'] = 'files/grupos/pmesp.png'; -- LOGO DO GRUPO 1
        ['Yakuza'] = 'files/grupos/yakuza.png'; -- LOGO DO GRUPO 2		
    };

    mensagemConvite = { -- NOME DO GRUPO , PEQUENA MENSAGEM QUE IRA APARECER QUANDO ALGUEM RECEBER UM CONVITE
        ['Policia Militar'] = 'pmesp - Convite'; -- NOME DO GRUPO 1 PARA APARECER, QUANDO FOR CONVIDAR ALGUEM
        ['Yakuza'] = 'Yakuza - Convite'; -- NOME DO GRUPO 2 PARA APARECER, QUANDO FOR CONVIDAR ALGUEM		
    }; 

    permissoesGrupos = { -- CARGOS DOS GRUPOS ( DO MAIOR AO MENOR )
	
	    -- NOME DO GRUPO 
        ['Policia Militar'] = {  -------------------------------------------------------------------------------------------- GRUPO 1 		
		
            {
                nomeCargo = 'Gerente'; -- NOME DO CARGO

                permissoes = { 
                    ['deposit'] = true; -- PERMISSAO PARA DEPOSITAR
                    ['withdraw'] = true; -- PERMISSAO PARA SACAR
                    ['invite'] = true; -- PERMISSAO PARA CONVIDAR
                    ['kick'] = true; -- PERMISSAO PARA EXPULSAR
                    ['promote'] = true; -- PERMISSAO PARA PROMOVER
                    ['downgrade'] = true; -- PERMISSAO PARA REBAIXAR
                };
            };

			
            {
                nomeCargo = 'Soldado'; -- NOME DO CARGO

                permissoes = {
                    ['deposit'] = true; -- PERMISSAO PARA DEPOSITAR
                    ['withdraw'] = true; -- PERMISSAO PARA SACAR
                    ['invite'] = false; -- PERMISSAO PARA CONVIDAR
                    ['kick'] = false; -- PERMISSAO PARA EXPULSAR
                    ['promote'] = false; -- PERMISSAO PARA PROMOVER
                    ['downgrade'] = false; -- PERMISSAO PARA REBAIXAR
                };
            };

			
            {
                nomeCargo = 'Recruta'; -- NOME DO CARGO

                permissoes = {
                    ['deposit'] = true; -- PERMISSAO PARA DEPOSITAR
                    ['withdraw'] = false; -- PERMISSAO PARA SACAR
                    ['invite'] = false; -- PERMISSAO PARA CONVIDAR
                    ['kick'] = false; -- PERMISSAO PARA EXPULSAR
                    ['promote'] = false; -- PERMISSAO PARA PROMOVER
                    ['downgrade'] = false; -- PERMISSAO PARA REBAIXAR
                };
            };	
        }; 	

		-- NOME DO GRUPO
        ['Yakuza'] = { -------------------------------------------------------------------------------------------- GRUPO 2
		
		
            {
                nomeCargo = 'Gerente'; -- NOME DO CARGO

                permissoes = { 
                    ['deposit'] = true; -- PERMISSAO PARA DEPOSITAR
                    ['withdraw'] = true; -- PERMISSAO PARA SACAR
                    ['invite'] = true; -- PERMISSAO PARA CONVIDAR
                    ['kick'] = true; -- PERMISSAO PARA EXPULSAR
                    ['promote'] = true; -- PERMISSAO PARA PROMOVER
                    ['downgrade'] = true; -- PERMISSAO PARA REBAIXAR
                };
            };

			
            {
                nomeCargo = 'Maloka'; -- NOME DO CARGO

                permissoes = {
                    ['deposit'] = true; -- PERMISSAO PARA DEPOSITAR
                    ['withdraw'] = true; -- PERMISSAO PARA SACAR
                    ['invite'] = false; -- PERMISSAO PARA CONVIDAR
                    ['kick'] = false; -- PERMISSAO PARA EXPULSAR
                    ['promote'] = false; -- PERMISSAO PARA PROMOVER
                    ['downgrade'] = false; -- PERMISSAO PARA REBAIXAR
                };
            };

			
            {
                nomeCargo = 'Cria'; -- NOME DO CARGO

                permissoes = {
                    ['deposit'] = true; -- PERMISSAO PARA DEPOSITAR
                    ['withdraw'] = false; -- PERMISSAO PARA SACAR
                    ['invite'] = false; -- PERMISSAO PARA CONVIDAR
                    ['kick'] = false; -- PERMISSAO PARA EXPULSAR
                    ['promote'] = false; -- PERMISSAO PARA PROMOVER
                    ['downgrade'] = false; -- PERMISSAO PARA REBAIXAR
                };
            };	
        }; 
		
		
			
    }; 
} 

--====================================[ INFOBOX ]====================================  

function message(player, text, type)
    exports['dxmessages']:addBox(player, text, type) -- EXPORTS DA SUA INFOBOX
end