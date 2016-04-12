class AddAttachmentImageFileToPropertyImages < ActiveRecord::Migration
  def self.up
    change_table :property_images do |t|
      t.attachment :image_file
    end
  end

  def self.down
    remove_attachment :property_images, :image_file
  end
end
