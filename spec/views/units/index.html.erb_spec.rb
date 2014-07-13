require 'rails_helper'

RSpec.describe "units/index", :type => :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        :unit_name => "Unit Name"
      ),
      Unit.create!(
        :unit_name => "Unit Name"
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => "Unit Name".to_s, :count => 2
  end
end
