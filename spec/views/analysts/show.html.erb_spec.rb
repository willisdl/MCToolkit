require 'rails_helper'

RSpec.describe "analysts/show", type: :view do
  before(:each) do
    @analyst = assign(:analyst, Analyst.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
