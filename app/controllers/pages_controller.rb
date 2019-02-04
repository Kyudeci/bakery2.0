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
    @cookies=Cookie.all
    def create
      Cookie.create(cookie_type: params[:cookie_type],flavors: params[:flavors],amount: params[:amount],price: params[:price])
      redirect_to '/cookie'
    end
  end

  def cake
  end

  def cupcake
  end
end
