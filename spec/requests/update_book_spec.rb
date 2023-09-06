require 'rails_helper'

RSpec.describe "UpdateBooks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/update_book/index"
      expect(response).to have_http_status(:success)
    end
  end

end
