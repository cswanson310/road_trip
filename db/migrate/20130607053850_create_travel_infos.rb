class CreateTravelInfos < ActiveRecord::Migration
  def change
    change_table :travel_infos do |t|

      t.timestamps
    end
  end
end
