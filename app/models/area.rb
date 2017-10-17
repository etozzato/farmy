class Area < ApplicationRecord
  belongs_to :district
  has_many :companies
end
