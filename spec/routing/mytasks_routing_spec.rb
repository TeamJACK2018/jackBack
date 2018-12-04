require "rails_helper"

RSpec.describe MytasksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/mytasks").to route_to("mytasks#index")
    end

    it "routes to #show" do
      expect(:get => "/mytasks/1").to route_to("mytasks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mytasks").to route_to("mytasks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mytasks/1").to route_to("mytasks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mytasks/1").to route_to("mytasks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mytasks/1").to route_to("mytasks#destroy", :id => "1")
    end
  end
end
