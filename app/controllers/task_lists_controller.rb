class TaskListsController < ApplicationController
	def new
		@task_list = TaskList.new
	end

	def index
		@task_lists = TaskList.all
		@tasks = Task.all
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
			redirect_to task_list_path @task_list.id
		end
	end

	def edit
		@task_list = TaskList.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		@task_list = TaskList.find(@task.tasklist_id)
		if @task.update(params[:task].permit(:title))
			redirect_to @task
		else
			render 'edit'
		end
	end
end
