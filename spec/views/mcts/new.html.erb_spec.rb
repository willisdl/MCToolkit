require 'rails_helper'

RSpec.describe "mcts/new", :type => :view do
  before(:each) do
    assign(:mct, Mct.new())
  end

  it "renders new mct form" do
    render

    assert_select "form[action=?][method=?]", mcts_path, "post" do
    end
  end
end
