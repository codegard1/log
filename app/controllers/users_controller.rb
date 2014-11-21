class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user].permit(:name,:phone))
    if @user.save
      redirect_to users_path @user
    end
  end
  
  def index
    # @users = User.all
    @users = User.all.paginate(:page => params[:page], :per_page => 6)
  end
  
  def show
    @user = User.find(params[:id])
  end
end
