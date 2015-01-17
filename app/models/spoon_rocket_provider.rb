class SpoonRocketProvider < SearchProvider
  def average_delivery_time
    if @address.city == "San Francisco"
      service_info = fetch_data("https://api.spoonrocket.com/userapi/menu?zone_id=2")
      service_info["avg_delivery_time"]
    end
  end

end
