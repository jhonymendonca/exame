# encoding: UTF-8

Dado(/^que eu esteja no site "([^"]*)"$/) do |url|
puts url
  visit(url)
end

Dado(/^exista um box de busca$/) do
  find(:css, "input[id$='suggestion-search']")
end

Dado(/^digite o termo "([^"]*)"$/) do |termo|
  fill_in("suggestion-search" , :with => termo)
end

Quando(/^eu clico no botão de busca$/) do
  find(:xpath, "//*[@id=\"site-topbar\"]/div[2]/form/button").click
end

Então(/^eu devo ver a listagem dos produtos relacionado ao termo$/) do
  find(:xpath, "//*[@id=\"category-products\"]")
end

Então(/^eu devo clicar em um produto relacionado$/) do
  find(:xpath, "//*[@id=\"category-products\"]/div[1]/section/ul/li[1]").click
end

Então(/^eu devo adicionar um item no carrinho$/) do
end

Então(/^eu devo escolher um "([^"]*)"$/) do |arg1|
end

Então(/^eu devo clicar no botão continuar$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^eu Clico no carrinho de compras$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^eu vejo o produto adicionado$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


















