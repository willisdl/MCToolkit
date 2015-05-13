require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(
        :[name => ""
      ),
      Theme.create!(
        :[name => ""
      )
    ])
  end

  it "renders a list of themes" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
