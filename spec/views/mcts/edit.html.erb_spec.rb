require 'rails_helper'

RSpec.describe "mcts/edit", :type => :view do
  before(:each) do
    @mct = assign(:mct, Mct.create!())
  end

  it "renders the edit mct form" do
    render

    assert_select "form[action=?][method=?]", mct_path(@mct), "post" do
    end
  end
end
