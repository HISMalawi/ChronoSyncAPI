class PharmacyBatchItem < ApplicationRecord
  belongs_to :pharmacy_batch
  belongs_to :drug
  belongs_to :site
end
