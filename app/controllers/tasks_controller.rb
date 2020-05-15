class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @new = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def edit
    @edit_task = Task.find(params[:id])
  end

  def update
    @update_task = Task.find(params[:id])
    @update_task.update(task_params)
    redirect_to task_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
