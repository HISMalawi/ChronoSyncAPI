class Pharmacy < ApplicationRecord
  self.primary_key = "id"
  belongs_to :site
end
