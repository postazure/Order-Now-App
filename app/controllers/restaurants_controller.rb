class RestaurantsController < ApplicationController
  def index
    if params[:location].empty?
      redirect_to root_path, alert:"Please enter locaton."
    end
    new_search = OrderAheadCrawler.new(params[:location])
    new_search.search_by_keywords(params[:keywords])
    @restaurants = new_search.shortest_delivery_time(-1)
    @delivery_times = {}
    @delivery_times["spoon_rocket"] = SpoonRocketProvider.new("94117").average_delivery_time
  end
end
