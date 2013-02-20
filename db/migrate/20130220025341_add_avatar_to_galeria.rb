class AddAvatarToGaleria < ActiveRecord::Migration
  def self.up
    add_attachment :galeria, :avatar
  end

  def self.down
    remove_attachment :galeria, :avatar
  end
end
