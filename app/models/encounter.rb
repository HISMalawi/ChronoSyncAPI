class Encounter < ApplicationRecord
  self.table_name = "encounter"
  self.primary_key = "encounter_id"
  belongs_to :encounter
  belongs_to :patient
  belongs_to :provider
  belongs_to :location
  belongs_to :form
  belongs_to :program
  belongs_to :site
end
