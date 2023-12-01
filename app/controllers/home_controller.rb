class HomeController < ApplicationController
  def index
    if user_signed_in?
      @task = Task.new
      @tasks = current_user.tasks
    else
    end

  end
end
