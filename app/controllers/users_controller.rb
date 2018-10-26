class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @users = User.find(params[:page])
  end

  def new
    @user = User.new
  end

  def create
  end
end
