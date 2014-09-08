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
			redirect_to task_list_path(params[:tasklist_id]) 
		end
	end

	def index
	end

	def show
		@task = Task.find(params[:id]) 
		@task_list = TaskList.find(@task.tasklist_id)
	end

	def edit
		@task = Task.where( :id => params[:id] )
	end

	def destroy 
		@task = Task.where(:id => params[:id]).first
		@task_list = TaskList.where(:id => @task.tasklist_id).first
		if @task.destroy
			redirect_to task_list_path(@task_list)
		end
	end

	def mark_complete
		@task = Task.find(:id => params[:id]).first
		@task_list = TaskList.find(@task.tasklist_id)
		@task.complete = true
		@task.completed_on = Time.now.strftime( "%m/%d/%y at %I:%M %p" )
		if @task.save 
			redirect_to task_list_path( @task_list )
		end
	end

	def update
		@task = Task.find(params[:id])
		@task_list = TaskList.find(@task.tasklist_id)

		if @task.update( params[:task].permit( :complete, :completed_on ))
			redirect_to @task_list
		else
			render 'edit'
		end
	end

end
