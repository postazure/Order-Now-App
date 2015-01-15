require "rails_helper"
describe OrderAheadCrawler do
  describe "#search_by_location" do
    it "returns an array" do
      new_crawl = OrderAheadCrawler.new("94117")
      expect(new_crawl.search_by_location.class).to eq Array
      expect(new_crawl.search_by_location.length).to eq 300
    end
  end

  describe "#shortest_delivery_time" do
    it "returns a sorted array of a specific length(5)" do
      new_crawl = OrderAheadCrawler.new("94117")
      new_crawl.search_by_location
      expect(new_crawl.shortest_delivery_time(5).class).to eq Array
      expect(new_crawl.shortest_delivery_time(5).length).to be <= 5
    end
  end
end
