class PharmacyStockBalance < ApplicationRecord
  self.primary_key = "id"
  belongs_to :drug
  belongs_to :site
end
