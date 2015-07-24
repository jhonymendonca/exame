# encoding: UTF-8

Dado(/^que eu envie um get para "([^"]*)"$/) do |url|
  @response = HTTParty.get(url)
end

Dado(/^eu valide o status code "([^"]*)"$/) do |code|
  # Verifica o Status Code.
  expect(@response.code).to eq code.to_i
end

Dado(/^eu valide o formato do json$/) do
  # Verifica se o formato do JSON é válido.
  @json = JSON.parse(@response.body)
end

Dado(/^eu valide "([^"]*)" com o valor "([^"]*)"$/) do |atributo, valor|
  # Verifica o atributo do JSON está igual ao valor esperado.
  expect(@json[atributo]).to have_content valor
end

Dado(/^eu extraia o json da String$/) do
  # Extra o JSON da string, pois a API dos correios não devolve JSON em caso de busca inválida/
  @json = JSON.parse(@response.body[18..30])
end

Dado(/^que eu envie um POST para "([^"]*)"$/) do |url|
  @response = HTTParty.post(url)
end
