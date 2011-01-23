require 'spec_helper'

describe "personals/index.html.erb" do
  before(:each) do
    assign(:personals, [
      stub_model(Personal,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Personal,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of personals" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
  end
end
