class AlunosController < ApplicationController
  before_action :authenticate_profile!  
  before_action :set_funcao_options, only: [:new, :create, :edit, :update]
  
  def index
    @alunos = Aluno.all
  end

  def new
    @aluno = Aluno.new
  end

  def edit
    @aluno = Aluno.find(params[:id])
  end
  
  def update
    @aluno = Aluno.find(params[:id])
    if @aluno.update(aluno_params)
      redirect_to alunos_path
    else
      render 'new'
    end
  end
  
  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno != nil
      if @aluno.save
        redirect_to root_path
      else
        redirect_to new_aluno_path
      end
    else
      render 'new'
    end
  end


  def show
    @aluno = Aluno.find(params[:id])
  end

  def destroy
    @aluno = Aluno.find(params[:id])
    @aluno.destroy

    redirect_to alunos_path
  end

  private

    def set_funcao_options # esse metodo está sendo usado no _form.html.erb
      @funcao_options = Cargo.all.pluck(:funcao, :id)
    end

    def aluno_params
      params.require(:aluno).permit(:aluno_name, :email, :matricula, :cargo_id)
    end
end
