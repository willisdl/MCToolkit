require 'rails_helper'

RSpec.describe "ctos/new", :type => :view do
  before(:each) do
    assign(:cto, Cto.new(
      :cto => "MyString"
    ))
  end

  it "renders new cto form" do
    render

    assert_select "form[action=?][method=?]", ctos_path, "post" do

      assert_select "input#cto_cto[name=?]", "cto[cto]"
    end
  end
end
