class LocationRecord < ApplicationRecord
  belongs_to :user

  validates :ip_address, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :recorded_at, presence: true

  def coordinates
    [latitude, longitude]
  end
end
