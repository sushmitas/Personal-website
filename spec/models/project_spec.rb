require 'spec_helper'

describe Project do
  
  before(:each) do
  	@attr = {
  		:name => "Example Project",
  		:short_description => "Example short description",
  		:desc_col1 => "Column 1 description.",
  		:desc_col2 => "Column 2 description.",
  		:desc_col3 => "Column 3 description.",
  		:thumb_img_filename => "ThumbImgName.png",
  		:index_img_filename => "IndexImgName.png"
  	}
  end
  
  it "should create a new instance given valid attributes" do
  	Project.create!(@attr)
  end
  
  it "should require a name" do
  	no_name_project = Project.new(@attr.merge(:name => ""))
  	no_name_project.should_not be_valid
  end
  
  it "should reject duplicate project names" do
  	Project.create!(@attr)
  	project_with_duplicate_name = Project.new(@attr)
  	project_with_duplicate_name.should_not be_valid
  end
end
