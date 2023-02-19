class TasksController < ApplicationController
  def task
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
 #haven't made successfully
  def create
    @task = Task.new(task_params)
    # @task = Task.new(params[:task])
    @task.save
    redirect_to tasks_path(@task)
  end
 #haven't made successfully
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
