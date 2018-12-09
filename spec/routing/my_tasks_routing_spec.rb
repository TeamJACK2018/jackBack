require "rails_helper"

RSpec.describe MyTasksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/my_tasks").to route_to("my_tasks#index")
    end

    it "routes to #show" do
      expect(:get => "/my_tasks/1").to route_to("my_tasks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my_tasks").to route_to("my_tasks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_tasks/1").to route_to("my_tasks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_tasks/1").to route_to("my_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_tasks/1").to route_to("my_tasks#destroy", :id => "1")
    end
  end
end
