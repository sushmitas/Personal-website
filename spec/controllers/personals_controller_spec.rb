require 'spec_helper'

describe PersonalsController do

  def mock_personal(stubs={})
    @mock_personal ||= mock_model(Personal, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all personals as @personals" do
      Personal.stub(:all) { [mock_personal] }
      get :index
      assigns(:personals).should eq([mock_personal])
    end
  end

  describe "GET show" do
    it "assigns the requested personal as @personal" do
      Personal.stub(:find).with("37") { mock_personal }
      get :show, :id => "37"
      assigns(:personal).should be(mock_personal)
    end
  end

  describe "GET new" do
    it "assigns a new personal as @personal" do
      Personal.stub(:new) { mock_personal }
      get :new
      assigns(:personal).should be(mock_personal)
    end
  end

  describe "GET edit" do
    it "assigns the requested personal as @personal" do
      Personal.stub(:find).with("37") { mock_personal }
      get :edit, :id => "37"
      assigns(:personal).should be(mock_personal)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created personal as @personal" do
        Personal.stub(:new).with({'these' => 'params'}) { mock_personal(:save => true) }
        post :create, :personal => {'these' => 'params'}
        assigns(:personal).should be(mock_personal)
      end

      it "redirects to the created personal" do
        Personal.stub(:new) { mock_personal(:save => true) }
        post :create, :personal => {}
        response.should redirect_to(personal_url(mock_personal))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved personal as @personal" do
        Personal.stub(:new).with({'these' => 'params'}) { mock_personal(:save => false) }
        post :create, :personal => {'these' => 'params'}
        assigns(:personal).should be(mock_personal)
      end

      it "re-renders the 'new' template" do
        Personal.stub(:new) { mock_personal(:save => false) }
        post :create, :personal => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested personal" do
        Personal.should_receive(:find).with("37") { mock_personal }
        mock_personal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :personal => {'these' => 'params'}
      end

      it "assigns the requested personal as @personal" do
        Personal.stub(:find) { mock_personal(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:personal).should be(mock_personal)
      end

      it "redirects to the personal" do
        Personal.stub(:find) { mock_personal(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(personal_url(mock_personal))
      end
    end

    describe "with invalid params" do
      it "assigns the personal as @personal" do
        Personal.stub(:find) { mock_personal(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:personal).should be(mock_personal)
      end

      it "re-renders the 'edit' template" do
        Personal.stub(:find) { mock_personal(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested personal" do
      Personal.should_receive(:find).with("37") { mock_personal }
      mock_personal.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the personals list" do
      Personal.stub(:find) { mock_personal }
      delete :destroy, :id => "1"
      response.should redirect_to(personals_url)
    end
  end

end
