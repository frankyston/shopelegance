class Cliente < ActiveRecord::Base
  attr_accessible :data, :nome, :sobrenome

  validates :nome, :presence => {:message=>"Campo Obrigatorio"}
end
