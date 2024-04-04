class Order < ApplicationRecord
  belongs_to :order
  belongs_to :order_type
  belongs_to :concept
  belongs_to :encounter
  belongs_to :patient
  belongs_to :obs
  belongs_to :site
end
