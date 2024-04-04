class DrugOrder < ApplicationRecord
  self.table_name = "drug_order"
  self.primary_key = "order_id"
  belongs_to :order
  belongs_to :drug_inventory
  belongs_to :site
end
