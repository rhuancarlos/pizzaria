class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :cliente, index: true, foreign_key: true
      t.string :tiporetirada
      t.text :obsentrega
      t.string :status
      t.float :valor
      t.string :fpagamento

      t.timestamps null: false
    end
  end
end
