class UsersController < ApplicationController
  def connections
    @users = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end
end