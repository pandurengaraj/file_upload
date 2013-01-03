class AddAttachmentPhotoToFileUploads < ActiveRecord::Migration
  def self.up
    change_table :file_uploads do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :file_uploads, :photo
  end
end
