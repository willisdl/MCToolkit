require 'rails_helper'

RSpec.describe "mcts/show", :type => :view do
  before(:each) do
    @mct = assign(:mct, Mct.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
