json.array!(@unidades) do |unidade|
  json.extract! unidade, :id, :piso, :numero, :tipo
  json.url unidade_url(unidade, format: :json)
end
