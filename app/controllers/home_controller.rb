class HomeController < ApplicationController
  def index
    @public_users = User.joins(:tasks).where(private: false).distinct
  end
end
