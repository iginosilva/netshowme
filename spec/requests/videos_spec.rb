require 'rails_helper'

RSpec.describe "Videos", type: :request do
  describe "GET /videos" do
    let(:user) {
      User.create(email: "senhordoteste@email.com", password: "123456", password_confirmation: "123456")
    }

    it "works! (now write some real specs)" do
      sign_in user
      get videos_path
      expect(response).to have_http_status(200)
    end
  end
end
