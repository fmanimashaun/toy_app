require 'rails_helper'

RSpec.describe "microposts/index", type: :view do
  before(:each) do
    assign(:microposts, [
      Micropost.create!(
        content: "MyText",
        user: nil
      ),
      Micropost.create!(
        content: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of microposts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
