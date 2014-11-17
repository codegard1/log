class TasksController < ApplicationController

	def new
		@task = Task.new
		@task_list = TaskList.find(params[:task_list_id] || 1) #if a tasklist_id is not supplied then go to the default list
	end

	def create
		@task = Task.create(
			params[:task].permit(
				:title,
				:complete,
				:completed_on,
				:user_id,
				:tasklist_id)
		)
		if @task.save
			redirect_to task_list_path(params[:tasklist_id]) 
		end
	end

	def index
		redirect_to task_lists_path
	end

	def show
		@task = Task.find(params[:id]) 
		@task_list = TaskList.find(@task.tasklist_id)
	end

	def edit
		@task = Task.find(params[:id])
	end

	def destroy 
		@task = Task.find(params[:id])
		@task_list = TaskList.where(:id => @task.tasklist_id).first
		if @task.destroy
			redirect_to task_list_path(@task_list)
		end
	end

	def update
		@task = Task.find(params[:id])
		@task_list = TaskList.find(@task.tasklist_id)

		if @task.update( params[:task].permit( :complete, :completed_on, :title, :user_id ))
			redirect_to @task_list
		else
			render 'edit'
		end
	end

private
	def post_params
		params.require(:post).permit(:title, :text) 
		# allows us to accept both text & title fields in this action
	end
	
end
