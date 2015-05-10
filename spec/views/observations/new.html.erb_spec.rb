require 'rails_helper'

RSpec.describe "observations/new", :type => :view do
  before(:each) do
    assign(:observation, Observation.new())
  end

  it "renders new observation form" do
    render

    assert_select "form[action=?][method=?]", observations_path, "post" do
    end
  end
end
