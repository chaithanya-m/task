class TasksController < ApplicationController


  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to root_path, notice: 'Task was successfully created.'
    else
      render root
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