class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.belongs_to :pessoa, index: true
      t.string :cep, limit: 10
      t.string :logradouro, limit: 100, null: false
      t.string :numero, limit: 10, null: false
      t.string :complemento, limit: 80
      t.string :cidade, limit: 80, null: false
      t.string :uf, limit: 2, null: false

      t.timestamps null: false
    end
    add_foreign_key :enderecos, :pessoas
  end
end
