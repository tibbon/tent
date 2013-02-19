require 'helper'

describe Tent do

  after do
    # Things to do after the test run
  end

  context "when something" do

    before do
      # Setup things to do first
    end

    it "does a thing in general" do
      true
    end
  end
  
  describe "#version" do
    it "Returns the proper version" do
      expect(Tent::VERSION).to eq("0.0.1")
    end
  end
  
  describe "#game_loop" do
    it "Returns that you lost" do
      expect(Tent.game_loop).to eq("You have lost")
    end
  end

  describe "#welcome" do
    it "Returns the welcome message" do
      expect(Tent.welcome).to eq("You are a general in a tent. The enemy is near, and the fate of your side depends on your decisions.")
    end
    context "when the options don't change" do
      it "caches the client" do
        true
      end
    end
  end
end