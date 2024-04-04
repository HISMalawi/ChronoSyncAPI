class PersonName < ApplicationRecord
  belongs_to :person_name
  belongs_to :person
  belongs_to :site
end
