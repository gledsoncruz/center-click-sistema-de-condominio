class CreateTorres < ActiveRecord::Migration
  def change
    create_table :torres do |t|
      t.belongs_to :bloco, index: true
      t.string :descricao, limit: 80, null: false
      t.string :sigla, limit: 10, null: false

      t.timestamps null: false
    end
    add_foreign_key :torres, :blocos
  end
end
