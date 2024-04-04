class PatientProgram < ApplicationRecord
  self.table_name = "patient_program"
  self.primary_key = "patient_program_id"
  belongs_to :patient_program
  belongs_to :patient
  belongs_to :program
  belongs_to :location
  belongs_to :site
end
