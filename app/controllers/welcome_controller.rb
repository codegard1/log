class WelcomeController < ApplicationController
  def index
	  @task_list = TaskList.where :id => 1
	  @tasks = Task.where :tasklist_id => 1
  end
end
