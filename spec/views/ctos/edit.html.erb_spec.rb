require 'rails_helper'

RSpec.describe "ctos/edit", :type => :view do
  before(:each) do
    @cto = assign(:cto, Cto.create!(
      :cto => "MyString"
    ))
  end

  it "renders the edit cto form" do
    render

    assert_select "form[action=?][method=?]", cto_path(@cto), "post" do

      assert_select "input#cto_cto[name=?]", "cto[cto]"
    end
  end
end
