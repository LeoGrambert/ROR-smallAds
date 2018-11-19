class SmalladsController < ApplicationController
  def home
    # if @current_user.try(:role) != "admin"
    #   flash[:error] = "Accès interdit"
    #   return redirect_to request.referrer || root_path
    # end
    if session[:id]
      @current_user = User.find(session[:id])
    end
    @advertisements = Advertisement.all
  end

  def show
  end

  def add
  end

  def update
  end

  def delete
  end
end
