require 'spec_helper'

describe "personals/show.html.erb" do
  before(:each) do
    @personal = assign(:personal, stub_model(Personal,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain("Description".to_s)
  end
end
