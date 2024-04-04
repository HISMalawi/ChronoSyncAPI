class Order < ApplicationRecord
  self.primary_key = "order_id"
  belongs_to :order
  belongs_to :order_type
  belongs_to :concept
  belongs_to :encounter
  belongs_to :patient
  belongs_to :obs
  belongs_to :site
end
