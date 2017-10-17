class Company < ApplicationRecord
  belongs_to :district
  belongs_to :area
  belongs_to :neighbour

  has_many :skus

  validates :name, presence: true
  validates :address, presence: true

  after_validation :geocode, if: :needs_geocoding?
  geocoded_by :address

  def needs_geocoding?
    longitude.blank? && latitude.blank? && address_changed?
  end
end
