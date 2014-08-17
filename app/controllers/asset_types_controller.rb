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
    @assets_by_type = Asset.where(:asset_type_id => params[:id]).order("created_at DESC")
  end  
  
  def index
    @asset_types = AssetType.order(:title)
    @asset_type_groups = AssetType.pluck(:group).sort
  end
end
