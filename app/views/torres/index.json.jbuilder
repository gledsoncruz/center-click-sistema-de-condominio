json.array!(@torres) do |torre|
  json.extract! torre, :id, :descricao, :sigla
  json.url torre_url(torre, format: :json)
end
