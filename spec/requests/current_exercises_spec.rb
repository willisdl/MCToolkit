require 'rails_helper'

RSpec.describe "CurrentExercises", :type => :request do
  describe "GET /current_exercises" do
    it "works! (now write some real specs)" do
      get current_exercises_path
      expect(response.status).to be(200)
    end
  end
end
