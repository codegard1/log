class MoveTypesController < ApplicationController
  def new
  	@move_type = MoveType.new
  end

  def edit
    @move_type = MoveType.find params[:id]
  end
  
  def create
  	@move_type = MoveType.create(params[:move_type].permit(:title))
  	if @move_type.save
  		@status_message = 'Move type ' + @move_type.title + ' saved successfully!'
  		redirect_to move_types_path
    else
      render 'edit'
    end
  end
  
  def index
  	#@move_types = MoveType.all.sort_by! &:title
	@move_types = MoveType.order("title ASC").page(params[:page])
  end

  def show
    redirect_to move_types_path
  end  
end
