class DrugOrder < ApplicationRecord
  belongs_to :order
  belongs_to :drug_inventory
  belongs_to :site
end
