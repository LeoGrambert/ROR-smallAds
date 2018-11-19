class SmalladsController < ApplicationController
  def home
    if session[:id]
      @current_user = User.find(session[:id])
    end
    @advertisements = Advertisement.all
  end

  def show
  end

  def add
    if !session[:id]
      flash[:error] = "Accès interdit. Vous devez créer un compte pour ajouter une annonce."
      return redirect_to '/users/new'
    end
  end

  def check
  end

  def update
  end

  def delete
  end
end
