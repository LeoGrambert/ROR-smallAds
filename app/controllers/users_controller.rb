class UsersController < ApplicationController
  def login
    if session[:id]
      redirect_to "/"
    end
  end

  def logout
    session[:id] = nil
    flash[:info] = "Vous avez bien été déconnecté"
    redirect_to "/"
  end

  def new
    if session[:id]
      redirect_to "/"
    end
  end

  def create
    User.create login: params[:login], password: params[:password]
    flash[:info] = "Bienvenue #{params[:login]} !"
    redirect_to "/"
  end


  def check
    @current_user = User.where(login: params[:login], password: params[:password]).first
    if @current_user
      session[:id] = @current_user.id
      flash[:info] = "Bienvenue #{@current_user.login} !"
      redirect_to "/"
    else
      session[:id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/users/login"
    end
  end
end
