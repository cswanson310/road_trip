class Day < ActiveRecord::Base
  has_one :start_city, class_name: 'City'
  has_one :end_city, class_name: 'City'
  has_one :travel_info
  has_one :cover_photo, class_name: 'Photo'

  def display_name
    start = City.find(start_city_id)
    end_city = City.find(end_city_id)
    "#{start.short_name} -> #{end_city.short_name}"
  end

end
