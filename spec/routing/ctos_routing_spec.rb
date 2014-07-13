require "rails_helper"

RSpec.describe CtosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ctos").to route_to("ctos#index")
    end

    it "routes to #new" do
      expect(:get => "/ctos/new").to route_to("ctos#new")
    end

    it "routes to #show" do
      expect(:get => "/ctos/1").to route_to("ctos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ctos/1/edit").to route_to("ctos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ctos").to route_to("ctos#create")
    end

    it "routes to #update" do
      expect(:put => "/ctos/1").to route_to("ctos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ctos/1").to route_to("ctos#destroy", :id => "1")
    end

  end
end
