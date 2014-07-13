require 'rails_helper'

RSpec.describe "Ctos", :type => :request do
  describe "GET /ctos" do
    it "works! (now write some real specs)" do
      get ctos_path
      expect(response.status).to be(200)
    end
  end
end
