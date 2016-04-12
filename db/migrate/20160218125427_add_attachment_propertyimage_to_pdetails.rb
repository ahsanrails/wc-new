class AddAttachmentPropertyimageToPdetails < ActiveRecord::Migration
  def self.up
    change_table :pdetails do |t|
      t.attachment :propertyimage
    end
  end

  def self.down
    remove_attachment :pdetails, :propertyimage
  end
end
