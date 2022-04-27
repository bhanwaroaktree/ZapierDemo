class UsersController < ApplicationController
  def index
    @users = User.all.order("id ASC")
  end

end
