class Location < ApplicationRecord
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
end
