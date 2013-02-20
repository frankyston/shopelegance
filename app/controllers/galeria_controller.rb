class GaleriaController < ApplicationController
  before_filter :authenticate_usuario!
  # GET /galeria
  # GET /galeria.json
  def index
    @galeria = Galerium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galeria }
    end
  end

  # GET /galeria/1
  # GET /galeria/1.json
  def show
    @galerium = Galerium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @galerium }
    end
  end

  # GET /galeria/new
  # GET /galeria/new.json
  def new
    @galerium = Galerium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @galerium }
    end
  end

  # GET /galeria/1/edit
  def edit
    @galerium = Galerium.find(params[:id])
  end

  # POST /galeria
  # POST /galeria.json
  def create
    @galerium = Galerium.new(params[:galerium])

    respond_to do |format|
      if @galerium.save
        format.html { redirect_to @galerium, notice: 'Galeria criada com Sucesso.' }
        format.json { render json: @galerium, status: :created, location: @galerium }
      else
        format.html { render action: "new" }
        format.json { render json: @galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /galeria/1
  # PUT /galeria/1.json
  def update
    @galerium = Galerium.find(params[:id])

    respond_to do |format|
      if @galerium.update_attributes(params[:galerium])
        format.html { redirect_to @galerium, notice: 'Galeria atualizada com Sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria/1
  # DELETE /galeria/1.json
  def destroy
    @galerium = Galerium.find(params[:id])
    @galerium.destroy

    respond_to do |format|
      format.html { redirect_to galeria_url }
      format.json { head :no_content }
    end
  end
end
