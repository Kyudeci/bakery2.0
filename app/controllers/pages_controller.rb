class PagesController < ApplicationController
  def main
  end

  def home
    @user = User.new
    def create
      User.create(email: params[:email],username: params[:username],password: params[:password])
      redirect_to '/'
    end
  end

  def cookie
  end

  def cake
  end

  def cupcake
  end
end
