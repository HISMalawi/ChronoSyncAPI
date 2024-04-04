class Note < ApplicationRecord
  self.table_name = "note"
  self.primary_key = "note_id"
  belongs_to :patient
  belongs_to :obs
  belongs_to :encounter
end
