class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to root_path, notice: 'Task was successfully created.'
    else
      # binding.break
      render :new, status: 422
    end
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to root_path, notice: 'Task was successfully updates.'
    else
      render :edit, status: 422
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:task, :status)
  end  
end
