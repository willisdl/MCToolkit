require 'rails_helper'

RSpec.describe "analysts/index", type: :view do
  before(:each) do
    assign(:analysts, [
      Analyst.create!(),
      Analyst.create!()
    ])
  end

  it "renders a list of analysts" do
    render
  end
end
