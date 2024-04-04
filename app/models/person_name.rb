class PersonName < ApplicationRecord
  self.table_name = "person_name"
  self.primary_key = "person_name_id"
  belongs_to :person_name
  belongs_to :person
  belongs_to :site
end
