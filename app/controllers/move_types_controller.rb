class MoveTypesController < ApplicationController
  def new
  	@move_type = MoveType.new
  end

  def edit
  end
  
  def create
  	@move_type = MoveType.create(params[:move_type].permit(:title))
  	if @move_type.save
  		@status_message = 'Move type ' + @move_type.title + ' saved successfully!'
  		redirect_to move_types_path
  	end
  end
  
  def index
  	@move_types = MoveType.all.sort_by! &:title
  end
  
end
