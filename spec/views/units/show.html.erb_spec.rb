require 'rails_helper'

RSpec.describe "units/show", :type => :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :unit_name => "Unit Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Unit Name/)
  end
end
