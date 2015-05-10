require 'rails_helper'

RSpec.describe "observations/index", :type => :view do
  before(:each) do
    assign(:observations, [
      Observation.create!(),
      Observation.create!()
    ])
  end

  it "renders a list of observations" do
    render
  end
end
