 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/quiz/forms", type: :request do
  
  # Quiz::Form. As you add validations to Quiz::Form, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Quiz::Form.create! valid_attributes
      get quiz_forms_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      form = Quiz::Form.create! valid_attributes
      get quiz_form_url(quiz_form)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_quiz_form_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      form = Quiz::Form.create! valid_attributes
      get edit_quiz_form_url(quiz_form)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Quiz::Form" do
        expect {
          post quiz_forms_url, params: { quiz_form: valid_attributes }
        }.to change(Quiz::Form, :count).by(1)
      end

      it "redirects to the created quiz_form" do
        post quiz_forms_url, params: { quiz_form: valid_attributes }
        expect(response).to redirect_to(quiz_form_url(@quiz_form))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Quiz::Form" do
        expect {
          post quiz_forms_url, params: { quiz_form: invalid_attributes }
        }.to change(Quiz::Form, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post quiz_forms_url, params: { quiz_form: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested quiz_form" do
        form = Quiz::Form.create! valid_attributes
        patch quiz_form_url(quiz_form), params: { quiz_form: new_attributes }
        form.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the quiz_form" do
        form = Quiz::Form.create! valid_attributes
        patch quiz_form_url(quiz_form), params: { quiz_form: new_attributes }
        form.reload
        expect(response).to redirect_to(quiz_form_url(form))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        form = Quiz::Form.create! valid_attributes
        patch quiz_form_url(quiz_form), params: { quiz_form: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested quiz_form" do
      form = Quiz::Form.create! valid_attributes
      expect {
        delete quiz_form_url(quiz_form)
      }.to change(Quiz::Form, :count).by(-1)
    end

    it "redirects to the quiz_forms list" do
      form = Quiz::Form.create! valid_attributes
      delete quiz_form_url(quiz_form)
      expect(response).to redirect_to(quiz_forms_url)
    end
  end
end
