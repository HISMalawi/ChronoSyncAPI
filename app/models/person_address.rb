class PersonAddress < ApplicationRecord
  self.table_name = "person_address"
  self.primary_key = "person_address_id"
  belongs_to :person_address
  belongs_to :person
  belongs_to :site
end
