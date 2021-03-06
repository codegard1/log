class AssetsController < ApplicationController
  def new
    @asset = Asset.new
  end
  
  def create
    @asset = Asset.create(
        params[:asset].permit(
            :title,
            :asset_type_id,
            :user_id,
            :asset_tag))
    if @asset.save 
      redirect_to assets_path
    else
      render 'assets/new'
    end
  end
  
  def index
    @assets = Asset.order('title ASC').page(params[:page])
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
                                            :asset_type_id,
                                            :user_id,
                                            :asset_tag ))
      redirect_to @asset
  	else
	  	render 'edit'
    end
  end
end
