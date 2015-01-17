class Address
  attr_reader :lng, :lat, :city
  def initialize address_string
    @data = Geocoder.search(address_string).first.data
    @lng = geo_coords["lng"].to_s
    @lat = geo_coords["lat"].to_s
    @city = @data["address_components"][1]["long_name"]
  end

  private
  def geo_coords
    @data["geometry"]["location"]
  end
end
