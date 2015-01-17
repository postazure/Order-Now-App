class SpoonRocketProvider < SearchProvider
  def average_delivery_time
      service_info = fetch_data("https://api.spoonrocket.com/userapi/menu?zone_id=2")
    if @address.city == "San Francisco" && service_info["active"]
      service_info["avg_delivery_time"]
    end
  end

end
