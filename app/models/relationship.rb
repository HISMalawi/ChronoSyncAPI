class Relationship < ApplicationRecord
  self.table_name = "relationship"
  self.primary_key = "relationship_id"
  belongs_to :relationship
  belongs_to :site
end
