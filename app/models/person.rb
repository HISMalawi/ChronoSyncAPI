class Person < ApplicationRecord
  self.table_name = "person"
  self.primary_key = "site_id, person_id"
end
