class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user].permit(:name,:phone))
    if @user.save then
      redirect_to users_path
    end
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.where(:id => params[:id]).first
    @user_assets = @user.assets.all
  end
end
