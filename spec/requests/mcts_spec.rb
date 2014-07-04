require 'rails_helper'

RSpec.describe "Mcts", :type => :request do
  describe "GET /mcts" do
    it "works! (now write some real specs)" do
      get mcts_path
      expect(response.status).to be(200)
    end
  end
end
