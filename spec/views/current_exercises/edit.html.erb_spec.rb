require 'rails_helper'

RSpec.describe "current_exercises/edit", :type => :view do
  before(:each) do
    @current_exercise = assign(:current_exercise, CurrentExercise.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit current_exercise form" do
    render

    assert_select "form[action=?][method=?]", current_exercise_path(@current_exercise), "post" do

      assert_select "input#current_exercise_name[name=?]", "current_exercise[name]"
    end
  end
end
