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
		# unless specified with params[:complete], only show uncomplete tasks
		params[:complete]? 
			(@task_list_tasks = Task.where(:tasklist_id => params[:id])) : 
			(@task_list_tasks = Task.where(:tasklist_id => params[:id], :complete => false))
		# sort tasks by most recent or (in a future version) another way depending on user input	
		@task_list_tasks = @task_list_tasks.order(created_at: :desc)
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
		@task_list = TaskList.find(params[:id])
		if @task_list.update(params[:task_list].permit(:title))
			redirect_to @task_list
		else
			render 'edit'
		end
	end
end
