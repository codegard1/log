class AssetTypesController < ApplicationController
  before_action :AssetType, only: [:create, :destroy]
  
  def new
    @asset_type = AssetType.new
  end
  
  def create
    @asset_type = AssetType.create(params[:asset_type].permit(:title,:group))
    if @asset_type.save 
      redirect_to asset_types_path
    end
  end

  def show
    @asset_type = AssetType.where(:id => params[:id]).first
  end  
  
  def index
    @asset_types = AssetType.all
  end
end
