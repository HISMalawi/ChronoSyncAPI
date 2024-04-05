class Patient < ApplicationRecord
  self.table_name = "patient"
  self.primary_key = "patient_id"
end
