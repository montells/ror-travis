require 'rails_helper'

RSpec.describe "kids/show", type: :view do
  before(:each) do
    @kid = assign(:kid, Kid.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
