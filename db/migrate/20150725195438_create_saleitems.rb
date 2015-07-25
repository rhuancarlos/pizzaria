class CreateSaleitems < ActiveRecord::Migration
  def change
    create_table :saleitems do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :pizza, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
