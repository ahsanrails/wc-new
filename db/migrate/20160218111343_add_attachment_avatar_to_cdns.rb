class AddAttachmentAvatarToCdns < ActiveRecord::Migration
  def self.up
    change_table :cdns do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :cdns, :avatar
  end
end
