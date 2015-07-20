json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :email, :senha, :tel1, :tel2
  json.url cliente_url(cliente, format: :json)
end
