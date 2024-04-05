class DrugOrder < ApplicationRecord
  self.table_name = "drug_order"
  self.primary_key = "order_id"
end
