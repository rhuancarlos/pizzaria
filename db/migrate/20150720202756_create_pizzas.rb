class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :nome
      t.string :foto
      t.text :ingredientes
      t.float :precop
      t.float :precom
      t.float :precog

      t.timestamps null: false
    end
  end
end
