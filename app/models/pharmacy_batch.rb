class PharmacyBatch < ApplicationRecord
  self.primary_key = "id"
  belongs_to :location
  belongs_to :site
end
