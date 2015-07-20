class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :tel1
      t.string :tel2

      t.timestamps null: false
    end
  end
end
