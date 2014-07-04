require "rails_helper"

RSpec.describe MctsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mcts").to route_to("mcts#index")
    end

    it "routes to #new" do
      expect(:get => "/mcts/new").to route_to("mcts#new")
    end

    it "routes to #show" do
      expect(:get => "/mcts/1").to route_to("mcts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mcts/1/edit").to route_to("mcts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mcts").to route_to("mcts#create")
    end

    it "routes to #update" do
      expect(:put => "/mcts/1").to route_to("mcts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mcts/1").to route_to("mcts#destroy", :id => "1")
    end

  end
end
