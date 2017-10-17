class Sku < ApplicationRecord
  belongs_to :product
  belongs_to :sub_sector
  belongs_to :sector
  belongs_to :family

  belongs_to :company

  validates :name, presence: true
  validates :product, presence: true

  after_save :categorize

  def categorize
    update_columns(
      sub_sector_id: product.sub_sector_id,
      sector_id: product.sector_id,
      family_id: product.family_id
    )
  end

end
