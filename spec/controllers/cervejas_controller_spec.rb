require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CervejasController do

  # This should return the minimal set of attributes required to create a valid
  # Cerveja. As you add validations to Cerveja, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nome" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CervejasController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all cervejas as @cervejas" do
      cerveja = Cerveja.create! valid_attributes
      get :index, {}, valid_session
      assigns(:cervejas).should eq([cerveja])
    end
  end

  describe "GET show" do
    it "assigns the requested cerveja as @cerveja" do
      cerveja = Cerveja.create! valid_attributes
      get :show, {:id => cerveja.to_param}, valid_session
      assigns(:cerveja).should eq(cerveja)
    end
  end

  describe "GET new" do
    it "assigns a new cerveja as @cerveja" do
      get :new, {}, valid_session
      assigns(:cerveja).should be_a_new(Cerveja)
    end
  end

  describe "GET edit" do
    it "assigns the requested cerveja as @cerveja" do
      cerveja = Cerveja.create! valid_attributes
      get :edit, {:id => cerveja.to_param}, valid_session
      assigns(:cerveja).should eq(cerveja)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Cerveja" do
        expect {
          post :create, {:cerveja => valid_attributes}, valid_session
        }.to change(Cerveja, :count).by(1)
      end

      it "assigns a newly created cerveja as @cerveja" do
        post :create, {:cerveja => valid_attributes}, valid_session
        assigns(:cerveja).should be_a(Cerveja)
        assigns(:cerveja).should be_persisted
      end

      it "redirects to the created cerveja" do
        post :create, {:cerveja => valid_attributes}, valid_session
        response.should redirect_to(Cerveja.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cerveja as @cerveja" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cerveja.any_instance.stub(:save).and_return(false)
        post :create, {:cerveja => { "nome" => "invalid value" }}, valid_session
        assigns(:cerveja).should be_a_new(Cerveja)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cerveja.any_instance.stub(:save).and_return(false)
        post :create, {:cerveja => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cerveja" do
        cerveja = Cerveja.create! valid_attributes
        # Assuming there are no other cervejas in the database, this
        # specifies that the Cerveja created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Cerveja.any_instance.should_receive(:update_attributes).with({ "nome" => "MyString" })
        put :update, {:id => cerveja.to_param, :cerveja => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested cerveja as @cerveja" do
        cerveja = Cerveja.create! valid_attributes
        put :update, {:id => cerveja.to_param, :cerveja => valid_attributes}, valid_session
        assigns(:cerveja).should eq(cerveja)
      end

      it "redirects to the cerveja" do
        cerveja = Cerveja.create! valid_attributes
        put :update, {:id => cerveja.to_param, :cerveja => valid_attributes}, valid_session
        response.should redirect_to(cerveja)
      end
    end

    describe "with invalid params" do
      it "assigns the cerveja as @cerveja" do
        cerveja = Cerveja.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cerveja.any_instance.stub(:save).and_return(false)
        put :update, {:id => cerveja.to_param, :cerveja => { "nome" => "invalid value" }}, valid_session
        assigns(:cerveja).should eq(cerveja)
      end

      it "re-renders the 'edit' template" do
        cerveja = Cerveja.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cerveja.any_instance.stub(:save).and_return(false)
        put :update, {:id => cerveja.to_param, :cerveja => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cerveja" do
      cerveja = Cerveja.create! valid_attributes
      expect {
        delete :destroy, {:id => cerveja.to_param}, valid_session
      }.to change(Cerveja, :count).by(-1)
    end

    it "redirects to the cervejas list" do
      cerveja = Cerveja.create! valid_attributes
      delete :destroy, {:id => cerveja.to_param}, valid_session
      response.should redirect_to(cervejas_url)
    end
  end

end
