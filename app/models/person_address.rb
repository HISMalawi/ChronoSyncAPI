class PersonAddress < ApplicationRecord
  belongs_to :person_address
  belongs_to :person
  belongs_to :site
end
