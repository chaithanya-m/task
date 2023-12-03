class HomeController < ApplicationController
  def index
    @public_todo_tasks = Task.public_tasks.todo_tasks.order(created_at: :desc)
    @public_completed_tasks = Task.public_tasks.completed_tasks.order(created_at: :desc)
    @todo_tasks, @completed_tasks = load_tasks
  end

  private

  def load_tasks
    if user_signed_in?
      todo_tasks = current_user.tasks.todo_tasks.order(created_at: :desc)
      completed_tasks = current_user.tasks.completed_tasks.order(created_at: :desc)
      [todo_tasks, completed_tasks]
    else
      [[],[]]
    end
  end
end
