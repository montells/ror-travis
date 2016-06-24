require 'rails_helper'

RSpec.describe "kids/edit", type: :view do
  before(:each) do
    @kid = assign(:kid, Kid.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit kid form" do
    render

    assert_select "form[action=?][method=?]", kid_path(@kid), "post" do

      assert_select "input#kid_name[name=?]", "kid[name]"
    end
  end
end
