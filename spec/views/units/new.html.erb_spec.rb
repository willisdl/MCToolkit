require 'rails_helper'

RSpec.describe "units/new", :type => :view do
  before(:each) do
    assign(:unit, Unit.new(
      :unit_name => "MyString"
    ))
  end

  it "renders new unit form" do
    render

    assert_select "form[action=?][method=?]", units_path, "post" do

      assert_select "input#unit_unit_name[name=?]", "unit[unit_name]"
    end
  end
end
