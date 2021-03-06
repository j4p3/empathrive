class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      sign_in @user
  		flash[:success] = "Welcome to Empathrive!"
  		redirect_to @user
  	end
  end

  def show
  	@user = User.find(params[:id])
    @experiences = @user.experiences
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:user])
  		flash[:success] = "Profile updated."
  		redirect_to @user
  	else
  		render 'edit'
  	end
  end
end
