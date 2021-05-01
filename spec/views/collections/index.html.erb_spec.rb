require 'rails_helper'

RSpec.describe "collections/index", type: :view do
  before(:each) do
    assign(:collections, [
      Collection.create!(
        title: "Title"
      ),
      Collection.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of collections" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
