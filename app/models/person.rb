class Person < ApplicationRecord
  self.table_name = "person"
  self.primary_key = "person_id"
  belongs_to :person
  belongs_to :site
end
