json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :cpf, :cnpj, :nome, :email, :cel, :proprietario, :tipo
  json.url pessoa_url(pessoa, format: :json)
end
