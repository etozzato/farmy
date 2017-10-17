class Neighbour < ApplicationRecord
  belongs_to :district
  belongs_to :area
  has_many :companies
end
