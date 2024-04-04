class PatientState < ApplicationRecord
  belongs_to :patient_state
  belongs_to :patient_program
  belongs_to :site
end
