class PharmacyBatchItemReallocation < ApplicationRecord
  self.primary_key = "id"
  belongs_to :batch_item
  belongs_to :location
  belongs_to :site
end
