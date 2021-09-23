require 'rails_helper'

RSpec.describe "quiz/forms/new", type: :view do
  before(:each) do
    assign(:quiz_form, Quiz::Form.new(
      name: "MyString"
    ))
  end

  it "renders new quiz_form form" do
    render

    assert_select "form[action=?][method=?]", quiz_forms_path, "post" do

      assert_select "input[name=?]", "quiz_form[name]"
    end
  end
end
