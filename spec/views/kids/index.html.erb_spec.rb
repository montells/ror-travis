require 'rails_helper'

RSpec.describe "kids/index", type: :view do
  before(:each) do
    assign(:kids, [
      Kid.create!(
        :name => "Name"
      ),
      Kid.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of kids" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
