<?php
	#Definições do Site
	define("titulo", "Eshop 2019!"); #Titulo do site
	define("base_href", "http://localhost/eshop/"); #url do site 
				#OBS: inclua a barra no final  ↑							
	define("base_href_admin", base_href."admin"); #NÃO MEXER!!


	#Definições do Banco de dados
	define("db_host", "localhost"); #host de conexão
	define("db_nome", "eshop"); #nome do banco
	define("db_usuario", "root"); #usuário do banco
	define("db_senha", ""); #senha do banco


	#Definições de contato
	define("contato_email", "thiago_salests@hotmail.com");
	define("contato_telefone", "+55 21 00000-0000");

	#Definições de depósito bancário
	define("banco", 1); #SELECIONE O BANCO
				   #↑ TROQUE AQUI!!!
					#0 = santander; 
					#1 = caixa; 
					#2 = itau; 
					#3 = BB; 
					#4 = Bradesco;
	define("banco_ag", "2525"); #Agência do banco
	define("banco_conta", "1010-2"); #Conta do banco + Digito
	define("banco_tipo", "013 - Poupança"); #Tipo da conta(Poupança ou Corrente)
	define("banco_favorecido", "Thiago Sales"); #Favorecido/Nome de quem vai receber


	#Definições do MercadoPago
	#Acessar: https://www.mercadopago.com/mlb/account/credentials/ e pegar as credenciais na guia "Checkout Básico"
	define("clientID", "8564680968191780");
	define("clientSecret", "hIfCOFmjHchmoTAnqioxMB3p9Zb3zeyk");


?>