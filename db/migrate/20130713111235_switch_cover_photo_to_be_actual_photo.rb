class SwitchCoverPhotoToBeActualPhoto < ActiveRecord::Migration
  def change
    remove_column :days, :cover_photo, :string
    add_column :days, :cover_photo_id, :integer
  end
end
