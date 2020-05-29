#language: pt

Funcionalidade: Obter Código IBGE do CEP informado

@cep_existente
Cenario: Busca CEP existente
Dado que eu tenha um cep existente
E realizo a busca 
Entao recebo o codigo do IBGE cadastrado para o CEP

@cep_inexistente
Cenario: Busca CEP inexistente
Dado que eu tenha um cep inexistente
E realizo a busca 
Entao recebo o retorno com erro
