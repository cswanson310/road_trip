class CreateDays < ActiveRecord::Migration
  def change
    change_table :days do |t|

      t.timestamps
    end
  end
end
