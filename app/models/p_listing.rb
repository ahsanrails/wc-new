class PListing < ActiveRecord::Base

	has_many :property_images
	accepts_nested_attributes_for :property_images

	# before_save :do_something

	# def do_something
	# 	self.total_time = self.time_out - self.time_in
	# end

geocoded_by :street
after_validation :geocode



        def self.search(search)
    	if search
    	where(["street ILIKE ? OR city_place ILIKE ?","%#{search}%", "%#{search}%"])
    	else
    	all 
    	end
    end



end
