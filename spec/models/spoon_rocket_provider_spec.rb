require "rails_helper"

describe SpoonRocketProvider do
  describe "#average_delivery_time" do
    it "in SF" do
      rs_search = SpoonRocketProvider.new("94117")
      deliver_time = rs_search.average_delivery_time
      expect(deliver_time).to eq 14
    end
    it "out of SF" do
      rs_search = SpoonRocketProvider.new("95014")
      deliver_time = rs_search.average_delivery_time
      expect(deliver_time).to be nil
    end
    it "if service is closed" do
      rs_search = SpoonRocketProvider.new("94117")
      deliver_time = rs_search.average_delivery_time
      expect(deliver_time).to be nil
    end
  end
end
