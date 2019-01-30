require "rails_helper"

RSpec.describe Tagging, :type => :model do
  context "All Dietary requirements" do
    it "Create Tagging" do
      tagging = Tagging.new(name: "NON-VEG", )
      expect(tagging).to be_valid
    end
  end
end