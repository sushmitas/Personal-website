class UsersController < ApplicationController
	before_filter :authenticate, :only => [:edit, :update]
	before_filter :correct_user, :only => [:edit, :update]
	
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
 		@user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
    	sign_in @user
    	flash[:success] = "Welcome to Theo's website!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
  def edit
  	@title = "Edit user"
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
  
  private
  
  	def authenticate
  		deny_access unless signed_in?
		end
		
		def correct_user
      @user = User.find(params[:id])
      unless current_user?(@user) or current_user.admin?
      	redirect_to(root_path) 
      	flash[:error] = "You are not authorized to view the page you requested."
    	end
    end
end