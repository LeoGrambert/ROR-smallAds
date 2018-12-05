class SmalladsController < ApplicationController
  def home
    if session[:id]
      @current_user = User.find(session[:id])
    end
    @advertisements_user = Advertisement.where state: 1
    @advertisements_admin = Advertisement.all
  end

  def show
    if session[:id]
      @current_user = User.find(session[:id])
    end
    @advertisement = Advertisement.find params[:id]
    @comments = Comment.where advertisements_id: params[:id]
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
      Advertisement.create title: params[:title], price: params[:price], content: params[:content], author: @current_user.login, state: 0
      redirect_to "/"
    end
  end

  def update
    if !session[:id]
      flash[:error] = "Accès interdit. Vous devez créer un compte pour ajouter une annonce."
      return redirect_to '/users/new'
    else
      @current_user = User.find(session[:id])
      Advertisement.find(params[:id]).update state: 1
      redirect_to "/advertisement/#{params[:id]}"
    end
  end

  def delete
    if !session[:id]
      flash[:error] = "Accès interdit. Vous devez créer un compte pour ajouter une annonce."
      return redirect_to '/users/new'
    else
      @current_user = User.find(session[:id])
      Advertisement.find(params[:id]).delete
      redirect_to "/"
    end
  end
end
