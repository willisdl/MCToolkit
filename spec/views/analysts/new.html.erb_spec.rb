require 'rails_helper'

RSpec.describe "analysts/new", type: :view do
  before(:each) do
    assign(:analyst, Analyst.new())
  end

  it "renders new analyst form" do
    render

    assert_select "form[action=?][method=?]", analysts_path, "post" do
    end
  end
end
