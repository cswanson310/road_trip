class AddCoverPhotoToDay < ActiveRecord::Migration
  def change
    add_column :days, :cover_photo, :string
  end
end
