class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @first = Task.first
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
