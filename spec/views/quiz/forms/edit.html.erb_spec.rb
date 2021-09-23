require 'rails_helper'

RSpec.describe "quiz/forms/edit", type: :view do
  before(:each) do
    @quiz_form = assign(:quiz_form, Quiz::Form.create!(
      name: "MyString"
    ))
  end

  it "renders the edit quiz_form form" do
    render

    assert_select "form[action=?][method=?]", quiz_form_path(@quiz_form), "post" do

      assert_select "input[name=?]", "quiz_form[name]"
    end
  end
end
