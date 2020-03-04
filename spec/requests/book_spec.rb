require "rails_helper"

RSpec.describe "Book browsing", :type => :request do

  context "when a book exists in the library" do
    it "displays book's details" do
      get "/books/1"

      expect(response).to render_template(:show)
      expect(response.body).to include("Book title")
    end
  end

  context "when a book doesn't exist in the library" do
    it "presents a not found page" do

    end
  end
end

