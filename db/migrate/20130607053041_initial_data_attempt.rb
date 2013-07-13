class InitialDataAttempt < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :start_city_id
      t.integer :end_city_id
      t.integer :travel_info_id
      t.date    :date
    end

    create_table :cities do |t|
      t.string :name
    end

    create_table :stories do |t|
      t.text    :text
      t.integer :day_id
    end

    create_table :photos do |t|
      t.string :path
    end

    create_table :travel_infos do |t|
      t.integer :hours
      t.integer :minutes
      t.integer :miles
      t.integer :day_id
    end

    create_table :people do |t|
      t.string :first
      t.string :last
    end
  end
end
