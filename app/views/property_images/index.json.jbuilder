json.array!(@property_images) do |property_image|
  json.extract! property_image, :id, :p_listing_id, :image_file
  json.url property_image_url(property_image, format: :json)
end
