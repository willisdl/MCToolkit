require 'rails_helper'

RSpec.describe "analysts/edit", type: :view do
  before(:each) do
    @analyst = assign(:analyst, Analyst.create!())
  end

  it "renders the edit analyst form" do
    render

    assert_select "form[action=?][method=?]", analyst_path(@analyst), "post" do
    end
  end
end
