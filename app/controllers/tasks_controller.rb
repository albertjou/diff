class TasksController < ApplicationController
  before_filter :authenticate_user!
def index # Shows all the tasks
end

def create # Create a task, only for sponsors
  binding.pry
  @task = Task.create(params[:task])
  current_user.tasks << @task
  redirect_to task_path(@task)
end

def new
  if current_user.type != "Sponsor"
    redirect_to '/tasks'
  else
    @task = Task.new
  end
end

def edit

end


def show # Shows a single task

end


def update

end




end
