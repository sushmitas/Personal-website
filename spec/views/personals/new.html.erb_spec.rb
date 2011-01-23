require 'spec_helper'

describe "personals/new.html.erb" do
  before(:each) do
    assign(:personal, stub_model(Personal,
      :new_record? => true,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new personal form" do
    render

    rendered.should have_selector("form", :action => personals_path, :method => "post") do |form|
      form.should have_selector("input#personal_name", :name => "personal[name]")
      form.should have_selector("input#personal_description", :name => "personal[description]")
    end
  end
end
