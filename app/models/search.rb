class Search < ActiveRecord::Base

def search_p_listings
	p_listings= PListing.all

	p_listings = p_listings.where(["property_type LIKE ?",p_type]) if p_type.present?
	p_listings = p_listings.where(["room LIKE ?",bedroom]) if bedroom.present?
	p_listings = p_listings.where(["bathroom LIKE ?",bathroom]) if bathroom.present?
	p_listings = p_listings.where(["total_rent LIKE ?",rent]) if rent.present?

	return p_listings
end

end
