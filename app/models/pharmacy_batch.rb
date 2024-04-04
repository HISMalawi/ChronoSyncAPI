class PharmacyBatch < ApplicationRecord
  belongs_to :location
  belongs_to :site
end
