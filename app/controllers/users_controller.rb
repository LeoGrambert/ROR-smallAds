class UsersController < ApplicationController
  def login
  end

  def new
  end

  def create
    User.create login: params[:Login], password: params[:Password]
    flash[:info] = "Bienvenue #{params[:login]} !"
    redirect_to "/"
  end


  def check
    @current_user = User.where(login: params[:Login], password: params[:Password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Bienvenue #{@current_user.login} !"
      redirect_to "/"
    else
      session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/users/login"
    end
  end
end
