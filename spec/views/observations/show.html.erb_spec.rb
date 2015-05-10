require 'rails_helper'

RSpec.describe "observations/show", :type => :view do
  before(:each) do
    @observation = assign(:observation, Observation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
