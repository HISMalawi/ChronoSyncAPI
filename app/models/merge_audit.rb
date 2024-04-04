class MergeAudit < ApplicationRecord
  belongs_to :primary
  belongs_to :secondary
  belongs_to :secondary_previous_merge
end
