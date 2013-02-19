class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :valor
      t.string :categoria

      t.timestamps
    end
  end
end
