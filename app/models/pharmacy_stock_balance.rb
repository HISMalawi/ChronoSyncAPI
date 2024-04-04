class PharmacyStockBalance < ApplicationRecord
  belongs_to :drug
  belongs_to :site
end
