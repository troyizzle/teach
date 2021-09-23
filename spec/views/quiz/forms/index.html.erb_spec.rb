require 'rails_helper'

RSpec.describe "quiz/forms/index", type: :view do
  before(:each) do
    assign(:quiz_forms, [
      Quiz::Form.create!(
        name: "Name"
      ),
      Quiz::Form.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of quiz/forms" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
