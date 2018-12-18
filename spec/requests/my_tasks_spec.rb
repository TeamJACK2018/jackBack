require 'rails_helper'

RSpec.describe "MyTasks", type: :request do
  describe "GET /my_tasks" do
    it "works! (now write some real specs)" do
      get my_tasks_path
      expect(response).to have_http_status(200)
    end

    it "is an array" do
      get my_tasks_path
      expect(response.pop()).to_not raise_error
    end
  end
end
