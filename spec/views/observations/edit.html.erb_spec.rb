require 'rails_helper'

RSpec.describe "observations/edit", :type => :view do
  before(:each) do
    @observation = assign(:observation, Observation.create!())
  end

  it "renders the edit observation form" do
    render

    assert_select "form[action=?][method=?]", observation_path(@observation), "post" do
    end
  end
end
