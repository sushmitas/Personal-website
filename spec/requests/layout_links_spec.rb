require 'spec_helper'

describe "LayoutLinks" do

	it "should have the right links on the layout" do
		visit root_path
		click_link "about"
		response.should have_selector('title', :content => "About")
		
		click_link "projects"
		response.should have_selector('title', :content => "Projects")
		
		click_link "resume"
		response.should have_selector('title', :content => "Resume")
	end
end
