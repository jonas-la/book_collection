require 'rails_helper'

RSpec.describe "Mains", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/main/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/main/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /read" do
    it "returns http success" do
      get "/main/read"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/main/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/main/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
