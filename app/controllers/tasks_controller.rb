class TasksController < ApplicationController

	def new
		@task = Task.new
		@task_list = TaskList.find(params[:task_list_id])
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
			redirect_to task_list_path(params[:task_list_id])
		end
	end

	def index
	end

	def show
		@task = Task.find(params[:id])
	end

	def edit
	end

end
