json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :email, :senha, :apelido, :tipo
  json.url usuario_url(usuario, format: :json)
end
