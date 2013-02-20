class CreateGaleria < ActiveRecord::Migration
  def change
    create_table :galeria do |t|
      t.string :nome
      t.date :data

      t.timestamps
    end
  end
end
