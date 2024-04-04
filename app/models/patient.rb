class Patient < ApplicationRecord
  self.table_name = "patient"
  self.primary_key = "patient_id"
  belongs_to :patient
  belongs_to :site
end
