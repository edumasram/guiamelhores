require "spec_helper"

describe CervejasController do
  describe "routing" do

    it "routes to #index" do
      get("/cervejas").should route_to("cervejas#index")
    end

    it "routes to #new" do
      get("/cervejas/new").should route_to("cervejas#new")
    end

    it "routes to #show" do
      get("/cervejas/1").should route_to("cervejas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cervejas/1/edit").should route_to("cervejas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cervejas").should route_to("cervejas#create")
    end

    it "routes to #update" do
      put("/cervejas/1").should route_to("cervejas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cervejas/1").should route_to("cervejas#destroy", :id => "1")
    end

  end
end
