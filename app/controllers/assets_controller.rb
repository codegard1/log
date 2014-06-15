class AssetsController < ApplicationController
  def new
    @asset = Asset.new
  end
  
  def create
    @asset = Asset.create(params[:asset].permit(:asset_type_id,:user_id))
    if @asset.save 
      redirect_to assets_path
    end
  end
  
  def index
    @assets = Asset.all
  end
  
  def show
    @asset = Asset.where(:id => params[:id]).first
  end
end
