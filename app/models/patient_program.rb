class PatientProgram < ApplicationRecord
  belongs_to :patient_program
  belongs_to :patient
  belongs_to :program
  belongs_to :location
  belongs_to :site
end
