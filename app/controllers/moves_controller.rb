class MovesController < ApplicationController
  def new
  	@move = Move.new
    @user = User.where( :id => params[:id] ).first
    @move_types = MoveType.select(:id, :title).sort_by! &:title
    @assets = Asset.select(:id, :asset_tag, :asset_type_id).sort_by! &:asset_tag
  end

  def edit
  end

  def create
  	@move = Move.create(params[:move].permit(:description,:user_id,:move_type_id,:asset_id))
    if @move.save
      redirect_to moves_path
    end
  end
  
  def index
  	@moves = Move.all.sort_by! &:created_at
  end

  def show
  end
end
