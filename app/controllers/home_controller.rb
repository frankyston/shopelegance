class HomeController < ApplicationController
  layout "site"

  def index
  end

  def clientes
  	@clientes = Cliente.all
  end

  def produtos
  	@produtos = Produto.all
  end
end
