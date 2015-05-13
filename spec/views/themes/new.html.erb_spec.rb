require 'rails_helper'

RSpec.describe "themes/new", type: :view do
  before(:each) do
    assign(:theme, Theme.new(
      :[name => ""
    ))
  end

  it "renders new theme form" do
    render

    assert_select "form[action=?][method=?]", themes_path, "post" do

      assert_select "input#theme_[name[name=?]", "theme[[name]"
    end
  end
end
