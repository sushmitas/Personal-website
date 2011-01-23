require 'spec_helper'

describe ProjectsController do
	render_views
	
	before(:each) do
		@base_title = "Theo Brower"
	end
	
	describe "GET 'index'" do
	
		before(:each) do
        @project = Factory(:project, :name => "Project 1")
        second = Factory(:project, :name => "Project 2")
        third  = Factory(:project, :name => "Project 3")

        @projects = [@project, second, third]
      end
		
		it "should be successful" do
			get :index
			response.should be_success
		end
		
		it "should have the right title" do
			get :index
			response.should have_selector("title", :content => @base_title + ' | Projects')
		end
		
		it "should have an element for each project" do
			get :index
			@projects.each do |project|
				response.should have_selector("li", :content => project.name)
			end
		end
	end
	
#	describe "Get 'new'" do
#		it "should be successful" do
#			get 'new'
#			response.should be_success
#		end
#		
#		it "should have the right title" do
#			get 'new'
#			response.should have_selector("title", :content => @base_title + ' | Add Project')
#		end
		
#		describe "Get 'edit'" do
#			it "should be successful" do
#				get 'edit'
#				response.should be_success
#			end
#			
#			it "should have the right title" do
#				get 'edit'
#				response.should have_selector("title", :content => @base_title + ' | Edit Project')
#			end
#		end
#	end
end
