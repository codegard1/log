class AssetTypesController < ApplicationController

  def new
    @asset_type = AssetType.new
    @asset_types = AssetType.all
  end
  
  def create
    @asset_type = AssetType.create
    if @asset_type.save 
      render 'new'
    end
  end

  def show
    @asset_type = AssetType.where(:id => params[:id]).first
  end  
end
