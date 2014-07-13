require 'rails_helper'

RSpec.describe "current_exercises/show", :type => :view do
  before(:each) do
    @current_exercise = assign(:current_exercise, CurrentExercise.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
