require 'rails_helper'

RSpec.describe "kids/new", type: :view do
  before(:each) do
    assign(:kid, Kid.new(
      :name => "MyString"
    ))
  end

  it "renders new kid form" do
    render

    assert_select "form[action=?][method=?]", kids_path, "post" do

      assert_select "input#kid_name[name=?]", "kid[name]"
    end
  end
end
