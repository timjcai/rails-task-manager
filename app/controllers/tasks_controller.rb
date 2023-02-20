class TasksController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def task
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

 #haven't made successfully
  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_restaurant
    @task = Task.find(params[:id])
  end
end
