class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :sobrenome
      t.date :data

      t.timestamps
    end
  end
end
