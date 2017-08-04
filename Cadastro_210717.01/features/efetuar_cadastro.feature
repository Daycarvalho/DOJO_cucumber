#language: pt
#utf-8

Funcionalidade: Efetuar Cadastro
	Eu como visitante da pagina
	Quero me cadastrar no site
	Para ter mais acesso ao conteudo interno

Cenario: Efetuar cadastro no site DemoQA
	Dado que esteja na home do site
	Quando eu acessar a opção Registration
	E informar todos os dados
	Entao envio o cadastro com sucesso
