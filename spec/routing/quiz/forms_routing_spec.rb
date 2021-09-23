require "rails_helper"

RSpec.describe Quiz::FormsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/quiz/forms").to route_to("quiz/forms#index")
    end

    it "routes to #new" do
      expect(get: "/quiz/forms/new").to route_to("quiz/forms#new")
    end

    it "routes to #show" do
      expect(get: "/quiz/forms/1").to route_to("quiz/forms#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/quiz/forms/1/edit").to route_to("quiz/forms#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/quiz/forms").to route_to("quiz/forms#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/quiz/forms/1").to route_to("quiz/forms#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/quiz/forms/1").to route_to("quiz/forms#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/quiz/forms/1").to route_to("quiz/forms#destroy", id: "1")
    end
  end
end
