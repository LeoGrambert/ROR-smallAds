class CommentsController < ApplicationController
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
      Comment.create advertisements_id: params[:id], content: params[:contentComment], author: @current_user.login
      redirect_to "/advertisement/#{params[:id]}"
    end
  end
end
