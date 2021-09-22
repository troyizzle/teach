require 'rails_helper'

RSpec.describe "quiz/forms/show", type: :view do
  before(:each) do
    @quiz_form = assign(:quiz_form, Quiz::Form.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
