class TasksController < ApplicationController
  # before_Action: set_tasks, done: false
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
    @task = Task.new(params[task_params])
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete
  end

  # def set_tasks_as_false
  #   @task = Task.find(params[:id])
  # end
  def task_params
     params.require(:task).permit(:name, :description, :done)
  end
end
