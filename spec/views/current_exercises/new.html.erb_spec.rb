require 'rails_helper'

RSpec.describe "current_exercises/new", :type => :view do
  before(:each) do
    assign(:current_exercise, CurrentExercise.new(
      :name => "MyString"
    ))
  end

  it "renders new current_exercise form" do
    render

    assert_select "form[action=?][method=?]", current_exercises_path, "post" do

      assert_select "input#current_exercise_name[name=?]", "current_exercise[name]"
    end
  end
end
