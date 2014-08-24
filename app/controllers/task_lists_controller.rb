class TaskListsController < ApplicationController
	def new
		@task_list = TaskList.new
	end

	def index
		@task_lists = TaskList.all
		@task_list_tasks = Task.all
	end

	def show
		@task_list = TaskList.find(params[:id])
		@task_list_tasks = Task.where(:tasklist_id => params[:id])
	end

	def create
		@task_list = TaskList.create(
			params[:task_list].permit(
				:title,
				:user_id)
		)
		if @task_list.save 
			redirect_to task_lists_path
		end
	end
end
