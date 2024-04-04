class PharmacyOb < ApplicationRecord
  self.primary_key = "pharmacy_module_id"
  belongs_to :pharmacy_module
  belongs_to :batch_item
  belongs_to :dispensation_obs
  belongs_to :stock_verification
  belongs_to :obs_group
  belongs_to :site
end
