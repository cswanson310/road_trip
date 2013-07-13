class Day < ActiveRecord::Base
  has_one :start_city, class_name: 'City'
  has_one :end_city, class_name: 'City'
  has_one :travel_info

end
