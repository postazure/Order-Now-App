class RestaurantsController < ApplicationController
  def index
    if params[:location].empty?
      redirect_to :back, alert:"Please enter locaton."
    end

    new_search = OrderAheadCrawler.new(params[:location])
    new_search.search_by_location
    @restaurants = new_search.shortest_delivery_time(10)
  end
end