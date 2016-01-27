class AddAttachmentPictureToYummyboxes < ActiveRecord::Migration
  def self.up
    change_table :yummyboxes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :yummyboxes, :picture
  end
end
