class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :senha
      t.string :apelido
      t.string :tipo

      t.timestamps null: false
    end
  end
end
