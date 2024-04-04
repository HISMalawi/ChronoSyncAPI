class PatientIdentifier < ApplicationRecord
  self.table_name = "patient_identifier"
  self.primary_key = "patient_identifier_id"
  belongs_to :patient_identifier
  belongs_to :patient
  belongs_to :location
  belongs_to :site
end
