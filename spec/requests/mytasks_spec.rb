require 'rails_helper'

RSpec.describe "Mytasks", type: :request do
  describe "GET /mytasks" do
    it "works! (now write some real specs)" do
      get mytasks_path
      expect(response).to have_http_status(200)
    end
  end
end
