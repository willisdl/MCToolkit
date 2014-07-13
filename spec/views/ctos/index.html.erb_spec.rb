require 'rails_helper'

RSpec.describe "ctos/index", :type => :view do
  before(:each) do
    assign(:ctos, [
      Cto.create!(
        :cto => "Cto"
      ),
      Cto.create!(
        :cto => "Cto"
      )
    ])
  end

  it "renders a list of ctos" do
    render
    assert_select "tr>td", :text => "Cto".to_s, :count => 2
  end
end
