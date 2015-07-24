# encoding: UTF-8
# language: pt

Funcionalidade: Adicionar no carrinho de compras um produto referente a busca por "tv".

  Cenário: Procurar e adicionar no carrinho de compras.
    Dado que eu esteja no site "http://www.walmart.com.br/"
    E exista um box de busca
    E digite o termo "tv"
    Quando eu clico no botão de busca
    Então eu devo ver a listagem dos produtos relacionado ao termo
    E eu devo clicar em um produto relacionado
    E eu devo adicionar um item no carrinho
    E eu devo clicar no botão continuar
    Então eu Clico no carrinho de compras
    E eu vejo o produto adicionado

