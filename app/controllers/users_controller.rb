class UsersController < ApplicationController
  before_action :set_funcao_options, only: [:new, :create, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'new'
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

    def set_funcao_options # esse metodo está sendo usado no _form.html.erb
      @funcao_options = Cargo.all.pluck(:funcao, :id)
    end

    def user_params
      params.require(:user).permit(:user_name, :email, :matricula, :cargo_id)
    end
end