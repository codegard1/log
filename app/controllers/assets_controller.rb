class AssetsController < ApplicationController
  def new
    @asset = Asset.new
    @user = User.where( :id => params[:id] ).first
  end
  
  def create
    @asset = Asset.create(params[:asset].permit(:title,:asset_type_id,:user_id, :asset_tag))
    if @asset.save 
      redirect_to assets_path
    end
  end
  
  def index
    @assets = Asset.all
  end
  
  def show
    @asset = Asset.find(params[:id])
  end
  
  def edit
    @asset = Asset.find(params[:id])
  end
  
  def update
  	@asset = Asset.find(params[:id])
    if @asset.update(params[:asset].permit( 
                                            :title, 
                                            :asset_type, 
                                            :user, 
                                            :asset_tag ))
      redirect_to @asset
  	else
	  	render 'edit'
    end
  end
end
