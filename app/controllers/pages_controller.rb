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
      @cookie=Cookie.create(cookie_type: params[:cookie_type],flavors: params[:flavors],amount: params[:amount],price: params[:price])
      respond_to do |format|
        if @cookie.save
            format.html { redirect_to '/cookie', notice: 'Cookie was successfully created.' }
            format.json { render :show, status: :created, location: @cookie }
        else
            format.html { render :new }
            format.json { render json: @cookie.errors, status: :unprocessable_entity }
        end
      end
    end
    def update
    respond_to do |format|
      if @cookie.update(instrument_params)
        format.html { redirect_to "/cookie", notice: 'Cookie was successfully updated.' }
        format.json { render :show, status: :ok, location: @cookie }
      else
        format.html { render :edit }
        format.json { render json: @cookie.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @cookie.destroy
    respond_to do |format|
      format.html { redirect_to "/cookie", notice: 'Cookie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_cookie
      @cookie = Cookie.find(params[:id])
    end
  end

  def cake
  end

  def cupcake
  end
end
