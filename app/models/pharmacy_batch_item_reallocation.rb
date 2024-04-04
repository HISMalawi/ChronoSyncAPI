class PharmacyBatchItemReallocation < ApplicationRecord
  belongs_to :batch_item
  belongs_to :location
  belongs_to :site
end
