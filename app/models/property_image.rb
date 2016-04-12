class PropertyImage < ActiveRecord::Base

  mount_uploader :image_file, ImageUploader
  belongs_to :p_listing

  has_attached_file :image_file, :styles => { :medium => "300x300>",
                                              :slides => "300x100>",
                                              :thumb => "100x100>",
                                              :small => "150x150>" }

  validates_attachment 	:image_file,
                        :presence => true,
                        :content_type => { :content_type => /\Aimage\/.*\Z/ },
                        :size => { :less_than => 1.megabyte }

end
