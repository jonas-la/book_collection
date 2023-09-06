require 'rails_helper'

RSpec.describe "DeleteBooks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/delete_book/index"
      expect(response).to have_http_status(:success)
    end
  end

end
