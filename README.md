# E-SHOP-COM-PAGAMENTO-VIA-MERCADOPAGO
Estou postando um projeto de e-shop que fiz utilizando PHP + PDO, é um projeto simples porém bem avançado, utilizando orientação a objeto, classes e funções entre outros

#Como utilizar?
1º Baixe o projeto e extraia, após acesse a pasta <b>Banco de Dados</b> e importe o banco <b>eshop.sql</b>;<br>

2º Após importar o banco, acesse: <b>lib/settings.php</b> e troque os dados do banco de dados, url do site, mantendo a barra no final da url e também outras informações, tais como contato, client_id e client_secret do MP entre outros;<br>
Onde pegar esses dados? https://www.mercadopago.com/mlb/account/credentials/ <br>

#Como acessar o painel de admin?
Navegue até /admin e logue-se com:

<b>Email:</b> thiago_salests@hotmail.com
<b>Senha:</b> 123456

#Como faço para adicionar a minha conta como administrador?

Acesse o banco de dados, na tabela <b>clientes</b>, localize seu cadastro e altere o valor da coluna <b>isadmin</b> de <b>0</b> para <b>1</b>

