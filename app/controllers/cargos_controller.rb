class CargosController < ApplicationController
  before_action :authenticate_profile!
  # layout "adm"
  def index
    @cargos = Cargo.all
  end

  def show
    @cargo = Cargo.find(params[:id])
  end

  def new
    @cargo = Cargo.new
  end

  def create
    @cargo = Cargo.new(cargo_params)
    if @cargo.save
      redirect_to cargos_path
    else
      render 'new'
    end
  end
  
  def destroy
    @cargo = Cargo.find(params[:id])
    @cargo.destroy

    redirect_to cargos_path
  end
  

  private

  def cargo_params
    params.require(:cargo).permit(:funcao, :sigla)
  end
end
