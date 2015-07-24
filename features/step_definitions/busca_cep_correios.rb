# encoding: UTF-8

require "httparty"

Dado(/^que eu envie um get para "([^"]*)"$/) do |url|
  @response = HTTParty.get(url)
end

Dado(/^eu valide o status code "([^"]*)"$/) do |code|
  expect(@response.code).to eq code.to_i
end

Dado(/^eu valide o formato do json$/) do
  @json = JSON.parse(@response.body)
end

Dado(/^eu valide "([^"]*)" com o valor "([^"]*)"$/) do |atributo, valor|
  expect(@json[atributo]).to have_content valor
end

Dado(/^eu extraia o json da String$/) do
  @json = JSON.parse(@response.body[18..30])
end

Dado(/^que eu envie um POST para "([^"]*)"$/) do |url|
  @response = HTTParty.post(url)
end
