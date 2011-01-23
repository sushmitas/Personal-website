require "spec_helper"

describe PersonalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/personals" }.should route_to(:controller => "personals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/personals/new" }.should route_to(:controller => "personals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/personals/1" }.should route_to(:controller => "personals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/personals/1/edit" }.should route_to(:controller => "personals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/personals" }.should route_to(:controller => "personals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/personals/1" }.should route_to(:controller => "personals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/personals/1" }.should route_to(:controller => "personals", :action => "destroy", :id => "1")
    end

  end
end
