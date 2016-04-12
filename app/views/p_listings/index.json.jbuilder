json.array!(@p_listings) do |p_listing|
  json.extract! p_listing, :id, :display_type, :use_type, :property_type, :title, :street, :house_no, :city_place, :zip_code, :flat_size, :room, :bathroom, :total_rent, :date, :description, :longitude, :latitude
  json.url p_listing_url(p_listing, format: :json)
end
