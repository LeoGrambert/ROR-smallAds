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
  end

  def update
  end

  def delete
  end
end
