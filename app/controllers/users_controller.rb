class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit_privacy
    @user = current_user
  end

  def update_privacy
    if current_user.update(user_params)
      redirect_to root_path, notice: 'tasks privacy updated '
    else
      render :edit_privacy
    end
  end

  private

  def user_params
    params.require(:user).permit(:private)
  end
end
