json.array!(@condominios) do |condominio|
  json.extract! condominio, :id, :nome, :cnpj
  json.url condominio_url(condominio, format: :json)
end
