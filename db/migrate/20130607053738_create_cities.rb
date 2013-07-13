class CreateCities < ActiveRecord::Migration
  def change
    change_table :cities do |t|

      t.timestamps
    end
  end
end
