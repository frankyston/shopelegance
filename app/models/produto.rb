class Produto < ActiveRecord::Base
  attr_accessible :categoria, :nome, :valor

  validates :nome, :presence => {:message => "Campo Obrigatorio"}
  validates :categoria, :presence => {:message => "Campo Obrigatorio"}
  validates :valor, :presence => {:message => "Campo Obrigatorio"}
end
