class HomeController < ApplicationController
  def index
    @public_users = User.joins(:tasks).where(privacy:false)
  end
end
