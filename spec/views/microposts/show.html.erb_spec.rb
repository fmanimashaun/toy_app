require 'rails_helper'

RSpec.describe "microposts/show", type: :view do
  before(:each) do
    assign(:micropost, Micropost.create!(
      content: "MyText",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
