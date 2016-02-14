class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.belongs_to :torre, index: true
      t.integer :piso
      t.string :numero, limit: 5, null: false
      t.string :tipo, limit: 20, null: false

      t.timestamps null: false
    end
    add_foreign_key :unidades, :torres
  end
end
