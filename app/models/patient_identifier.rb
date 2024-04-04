class PatientIdentifier < ApplicationRecord
  belongs_to :patient_identifier
  belongs_to :patient
  belongs_to :location
  belongs_to :site
end
