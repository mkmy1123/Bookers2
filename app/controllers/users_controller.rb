class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
  	@book = Book.new
  	@user = User.find(params[:id])
  	@books = @user.books
  end

  def index
  	@users = User.all
  end

  def edit
  	@user = User.find(params[:id])
  end
end
