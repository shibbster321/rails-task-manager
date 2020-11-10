class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create({ title: params['task']["title"], details: params['task']['details'] })
    redirect_to tasks_path
  end
end
