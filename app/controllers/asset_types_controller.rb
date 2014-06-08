class AssetTypesController < ApplicationController
  before_action :AssetType, only: [:create, :destroy]
  
  def new
    @asset_type = AssetType.new
    #@asset_types = AssetType.all
  end
  
  def create
    @asset_type = AssetType.create(params[:asset_type].permit(:title,:group))
    if @asset_type.save 
      puts "the group wascreated"
    end
  end

  def show
    @asset_type = AssetType.where(:id => params[:id]).first
  end  
  
  def index
    @asset_types = AssetType.all
  end
end
