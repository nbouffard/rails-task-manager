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
  end
end
