class Patient < ApplicationRecord
  belongs_to :patient
  belongs_to :site
end
