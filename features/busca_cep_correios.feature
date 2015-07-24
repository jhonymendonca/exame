# encoding: UTF-8
# language: pt

Funcionalidade: Dado um determinado CEP, consultar bairro, logradouro, cep, uf e localidade na API pública dos correios.

  Cenário: CEP válido
  	Dado que eu envie um get para "http://cep.correiocontrol.com.br/01303010.json"
  	E eu valide o status code "200"
  	E eu valide o formato do json
  	E eu valide "bairro" com o valor "Consolação"
	E eu valide "logradouro" com o valor "Rua Nestor Pestana"
	E eu valide "cep" com o valor "01303010"
	E eu valide "uf" com o valor "SP"
	E eu valide "localidade" com o valor "São Paulo"

  Cenário: CEP inválido
  	Dado que eu envie um get para "http://cep.correiocontrol.com.br/0000000.json"
  	E eu extraia o json da String
  	E eu valide o status code "200"
  	E eu valide "erro" com o valor "true"
  	

  Cenário: Método HTTP inválido
  	Dado que eu envie um POST para "http://cep.correiocontrol.com.br/01303010.json"
  	E eu valide o status code "405"