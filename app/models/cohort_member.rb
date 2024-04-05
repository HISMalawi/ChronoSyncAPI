class CohortMember < ApplicationRecord
  self.table_name = "cohort_member"
  self.primary_key = "cohort_id"
end
