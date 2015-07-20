json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :nome, :foto, :ingredientes, :precop, :precom, :precog
  json.url pizza_url(pizza, format: :json)
end
