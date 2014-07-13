require 'rails_helper'

RSpec.describe "ctos/show", :type => :view do
  before(:each) do
    @cto = assign(:cto, Cto.create!(
      :cto => "Cto"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cto/)
  end
end
