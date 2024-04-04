class PersonAttribute < ApplicationRecord
  self.table_name = "person_attribute"
  self.primary_key = "person_attribute_id"
  belongs_to :person_attribute
  belongs_to :person
  belongs_to :person_attribute_type
  belongs_to :site
end
