class CreateStories < ActiveRecord::Migration
  def change
    change_table :stories do |t|

      t.timestamps
    end
  end
end
