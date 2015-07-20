json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :cliente_id, :logradouro, :bairro, :cidade, :pontoreferencia
  json.url endereco_url(endereco, format: :json)
end
