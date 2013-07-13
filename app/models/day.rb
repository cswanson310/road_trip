class Day < ActiveRecord::Base
  has_one :start_city, class_name: :city
  has_one :end_city, class_name: :city
  has_one :travel_info
end
