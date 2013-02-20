class Galerium < ActiveRecord::Base
  attr_accessible :data, :nome, :avatar
  #attr_accessor :avatar_file_name
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
