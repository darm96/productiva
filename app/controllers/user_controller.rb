class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)

    if @users.save
      redirect_to user_path, notice: "Usuario creado con éxito" and return
    end
    render 'new'
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    if @users.update_attributes(persona_params)
      redirect_to user_path, notice: "#{firstname} #{lastname} ha sido actualizado" and return
    end
    render 'edit'
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy

    redirect_to user_path, notice: "#{firstname} #{lastname} ha sido eliminado" and return

  end

  def user_params
    params.requiere(:user).permit(:firstname, :lastname, :email,)
  end
end