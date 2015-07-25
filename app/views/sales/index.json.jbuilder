json.array!(@sales) do |sale|
  json.extract! sale, :id, :cliente_id, :tiporetirada, :obsentrega, :status, :valor, :fpagamento
  json.url sale_url(sale, format: :json)
end
