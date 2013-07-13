class Photo < ActiveRecord::Base
  has_many :days, through: :photo_ownership
end
