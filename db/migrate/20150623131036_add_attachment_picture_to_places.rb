class AddAttachmentPictureToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :places, :picture
  end
end
