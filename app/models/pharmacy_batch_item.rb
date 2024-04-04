class PharmacyBatchItem < ApplicationRecord
  self.primary_key = "id"
  belongs_to :pharmacy_batch
  belongs_to :drug
  belongs_to :site
end
