require 'rails_helper'

RSpec.describe "Exercises", :type => :request do
  describe "GET /exercises" do
    it "works! (now write some real specs)" do
      get exercises_path
      expect(response.status).to be(200)
    end
  end
end
