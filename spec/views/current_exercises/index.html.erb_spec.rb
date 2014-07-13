require 'rails_helper'

RSpec.describe "current_exercises/index", :type => :view do
  before(:each) do
    assign(:current_exercises, [
      CurrentExercise.create!(
        :name => "Name"
      ),
      CurrentExercise.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of current_exercises" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
