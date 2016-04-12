class AddAttachmentPImageToPListings < ActiveRecord::Migration
  def self.up
    change_table :p_listings do |t|
      t.attachment :p_image
    end
  end

  def self.down
    remove_attachment :p_listings, :p_image
  end
end
