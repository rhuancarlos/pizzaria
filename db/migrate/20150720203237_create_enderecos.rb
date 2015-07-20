class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.references :cliente, index: true, foreign_key: true
      t.text :logradouro
      t.string :bairro
      t.string :cidade
      t.string :pontoreferencia

      t.timestamps null: false
    end
  end
end
