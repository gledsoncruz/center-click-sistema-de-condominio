class CreateCondominios < ActiveRecord::Migration
  def change
    create_table :condominios do |t|
      t.string :nome, limit: 80, null: false
      t.string :cnpj, limit: 15, null: false

      t.timestamps null: false
    end
  end
end
