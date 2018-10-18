#language: pt
#utf-8

Funcionalidade: Cadastrar


@cadastro
Cenario: Cadastrar novo supplier
Dado que estou logado no site phptravels
Quando preencher o formulário de resgistro com dados de um novo supplier
Entao validar que o novo supplier foi adicionado a lista e a mensagem CHANGES SAVED!