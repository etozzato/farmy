class Pizza < ApplicationRecord
  scope :listed, -> { where(is_public: true) }
  scope :unlisted, -> { where(is_public: false) }
end
