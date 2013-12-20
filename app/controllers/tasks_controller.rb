class TasksController < ApplicationController
  before_filter :authenticate_user!
def index # Shows all the tasks
end

def create # Create a task, only for sponsors
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
  @task = Task.find(params[:id])
end


def show # Shows a single task
  @task = Task.find(params[:id])
end


def update
  @task = Task.find(params[:id])
  if @task.sponsor == current_user
      if @task.update_attributes(params[:task])
        redirect_to root_path
      else
        render :new
      end
  end
end




end
