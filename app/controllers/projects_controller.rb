class ProjectsController < ApplicationController
	before_filter :authenticate, :only => [:new, :edit, 
		:update, :create, :destroy]
	before_filter :admin_check, :only => [:new, :edit, :update, :create, :destroy]

  def index
  	@projects = Project.all
  	@title = "Projects"
  	@menuselect = "Projects"
  end
  
  def show
  	@projects = Project.all
		@project = Project.find(params[:id])
		@images = @project.images
		@title = @project.name
		@menuselect = "Projects"
  end
  
  def new
  	@title = "Add Project"
  	@project = Project.new
  	3.times { @project.images.build }
  	@menuselect = "Projects"
  end
  
  def create
  	@project = Project.new(params[:project])
  	if @project.save
  		flash[:success] = "Project added."
  		redirect_to @project
  	else
  		@title = "Add Project"
  		render 'new'
  	end
  end
  
  def edit
  	@title = "Edit project"
  	@project = Project.find(params[:id])
  	@images = @project.images
  	@menuselect = "Projects"
  end
  
  def update
  	@project = Project.find(params[:id])
  	@images = @project.images
  	if @project.update_attributes(params[:project]) 
			flash[:success] = "Project updated."
			redirect_to @project
  	else
  		@title = "Edit project"
  		render 'edit'
  	end
  end
  
  def destroy
  	Project.find(params[:id]).destroy
  	flash[:success] = "Project deleted."
  	redirect_to projects_path
  end
  
  def featured
  	@projects = Project.all
		@project = Project.find(params[1])
  end
  
  private

    def authenticate
      deny_access unless signed_in?
    end
    
    def admin_check
      require_admin unless current_user.admin?
    end

end
