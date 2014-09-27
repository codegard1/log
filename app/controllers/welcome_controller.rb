class WelcomeController < ApplicationController
  def index
	  @task_list = TaskList.where( :id => 1).first
	  @tasks = Task.where(:tasklist_id => 1, :complete => false).order(created_at: :desc)
  end
end
