class Encounter < ApplicationRecord
  belongs_to :encounter
  belongs_to :patient
  belongs_to :provider
  belongs_to :location
  belongs_to :form
  belongs_to :program
  belongs_to :site
end
