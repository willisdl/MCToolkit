require "rails_helper"

RSpec.describe CurrentExercisesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/current_exercises").to route_to("current_exercises#index")
    end

    it "routes to #new" do
      expect(:get => "/current_exercises/new").to route_to("current_exercises#new")
    end

    it "routes to #show" do
      expect(:get => "/current_exercises/1").to route_to("current_exercises#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/current_exercises/1/edit").to route_to("current_exercises#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/current_exercises").to route_to("current_exercises#create")
    end

    it "routes to #update" do
      expect(:put => "/current_exercises/1").to route_to("current_exercises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/current_exercises/1").to route_to("current_exercises#destroy", :id => "1")
    end

  end
end
