class PatientState < ApplicationRecord
  self.table_name = "patient_state"
  self.primary_key = "patient_state_id"
  belongs_to :patient_state
  belongs_to :patient_program
  belongs_to :site
end
