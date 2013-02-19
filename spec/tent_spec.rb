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

  # Describe a method
  describe "first_method" do
    it "Does something right" do
      true
      #expect(Tent.first_method).to be_true
    end
    context "when the options don't change" do
      it "caches the client" do
        true
      end
    end
  end
end