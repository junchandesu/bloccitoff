class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@items = current_user.items
  end
end

