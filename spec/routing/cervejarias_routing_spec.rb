require "spec_helper"

describe CervejariasController do
  describe "routing" do

    it "routes to #index" do
      get("/cervejarias").should route_to("cervejarias#index")
    end

    it "routes to #new" do
      get("/cervejarias/new").should route_to("cervejarias#new")
    end

    it "routes to #show" do
      get("/cervejarias/1").should route_to("cervejarias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cervejarias/1/edit").should route_to("cervejarias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cervejarias").should route_to("cervejarias#create")
    end

    it "routes to #update" do
      put("/cervejarias/1").should route_to("cervejarias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cervejarias/1").should route_to("cervejarias#destroy", :id => "1")
    end

  end
end
