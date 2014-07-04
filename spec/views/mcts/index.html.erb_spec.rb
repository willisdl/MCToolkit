require 'rails_helper'

RSpec.describe "mcts/index", :type => :view do
  before(:each) do
    assign(:mcts, [
      Mct.create!(),
      Mct.create!()
    ])
  end

  it "renders a list of mcts" do
    render
  end
end
