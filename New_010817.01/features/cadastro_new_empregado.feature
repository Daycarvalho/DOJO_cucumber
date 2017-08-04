#language: pt
#utf-8

Funcionalidade: Cadastro Novo Empregado
  Eu como administrador
  Quero cadastrar um novo empregado
  Para identifacar no registro de novos funcionarios

Cenario: Validar criacao de novo funcionario
  Dado que eu esteja logado no sistema
  Quando eu acessar a tela 'Add Employee'
  Entao eu devo cadastrar um funcionario com sucesso