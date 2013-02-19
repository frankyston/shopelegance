class HomeController < ApplicationController
  
  def clientes
  	@clientes = Cliente.all
  end

  def produtos
  	@produtos = Produto.all
  end
end
