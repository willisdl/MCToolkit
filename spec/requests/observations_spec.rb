require 'rails_helper'

RSpec.describe "Observations", :type => :request do
  describe "GET /observations" do
    it "works! (now write some real specs)" do
      get observations_path
      expect(response.status).to be(200)
    end
  end
end
