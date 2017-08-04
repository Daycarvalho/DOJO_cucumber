#language: pt
#utf-8

Funcionalidade: Edicao Empregado
  Eu como administrador
  Quero editar um cadastro de empregado
  Para manter atualizado o registro funcionario

Cenario: Validar edicao de dados do funcionario
  Dado que eu esteja logado no sistema
  Quando eu acessar a tela 'Employee List'
  Entao eu devo alterar os dados do funcionario com sucesso