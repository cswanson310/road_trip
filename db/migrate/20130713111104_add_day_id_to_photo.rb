class AddDayIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :day_id, :integer
  end
end
