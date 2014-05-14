class UsersController < ApplicationController

  def new
    
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in(@user)
      redirect_to root_url
    else
      render :new
    end

  end

  def show
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update({user_params})
      redirect_to :show
    else
      
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :sesion_token, :password, :cash)
  end


end
