class SmalladsController < ApplicationController
  def home
    if session[:id]
      @current_user = User.find(session[:id])
    end
    @advertisements = Advertisement.where state: 1
  end

  def show
  end

  def add
    if !session[:id]
      flash[:error] = "Accès interdit. Vous devez créer un compte pour ajouter une annonce."
      return redirect_to '/users/new'
    else
      @current_user = User.find(session[:id])
    end
  end

  def check
    if !session[:id]
      flash[:error] = "Accès interdit. Vous devez créer un compte pour ajouter une annonce."
      return redirect_to '/users/new'
    else
      @current_user = User.find(session[:id])
      Advertisement.create title: params[:title], content: params[:content], author: @current_user, state: 0
      redirect_to "/"
    end
  end

  def update
  end

  def delete
  end
end
