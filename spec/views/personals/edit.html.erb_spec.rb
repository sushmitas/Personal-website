require 'spec_helper'

describe "personals/edit.html.erb" do
  before(:each) do
    @personal = assign(:personal, stub_model(Personal,
      :new_record? => false,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit personal form" do
    render

    rendered.should have_selector("form", :action => personal_path(@personal), :method => "post") do |form|
      form.should have_selector("input#personal_name", :name => "personal[name]")
      form.should have_selector("input#personal_description", :name => "personal[description]")
    end
  end
end
