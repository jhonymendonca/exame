# encoding: UTF-8

Dado(/^que eu esteja no site "([^"]*)"$/) do |url|
  visit(url)
end

Dado(/^exista um box de busca$/) do
  find(:xpath, "//*[@id=\"suggestion-search\"]")
end

Dado(/^digite o termo "([^"]*)"$/) do |termo|
  # Digita o termo no input.
  fill_in("suggestion-search" , :with => termo)
end

Quando(/^eu clico no botão de busca$/) do
  find(:xpath, "//*[@id=\"site-topbar\"]/div[2]/form/button").click
end

Então(/^eu devo ver a listagem dos produtos relacionado ao termo$/) do
  find(:xpath, "//*[@id=\"category-products\"]")
end

Então(/^eu devo clicar em um produto relacionado$/) do
  find(:xpath, "//*[@id=\"category-products\"]/div[1]/section/ul/li[1]/figure/a").click
end

Então(/^eu devo adicionar um item no carrinho$/) do
  find(:xpath, "//*[@id=\"buybox-Walmart\"]/div[2]/div/div[4]/button/span[1]").click
end

Então(/^eu devo clicar no botão continuar$/) do
  find(:xpath, "//*[@id=\"navegaCarrinho\"]").click
end

Então(/^eu Clico no carrinho de compras$/) do
  find(:xpath, "//*[@id=\"site-topbar\"]/div[2]/div[1]/a").click
end

Então(/^eu vejo o produto adicionado$/) do
  # Verifica o produto adicionado no carrinho.
  expect(find(:xpath, "//*[@id=\"main\"]/div/section/div/article/ul/li/ul/li[1]/div/div[1]/a")["href"]).to have_content @produto
end

















