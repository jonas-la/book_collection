require 'rails_helper'

RSpec.describe "NewBooks", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/new_books/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/new_books/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/new_books/index"
      expect(response).to have_http_status(:success)
    end
  end

end
