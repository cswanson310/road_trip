class AddShortNameToCities < ActiveRecord::Migration
  def change
    add_column :cities, :short_name, :string
  end
end
