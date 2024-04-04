class PersonAttribute < ApplicationRecord
  belongs_to :person_attribute
  belongs_to :person
  belongs_to :person_attribute_type
  belongs_to :site
end
