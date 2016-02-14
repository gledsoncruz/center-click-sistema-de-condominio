json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :tipo_logradouro, :logradouro, :numero, :complemento, :cep
  json.url endereco_url(endereco, format: :json)
end
