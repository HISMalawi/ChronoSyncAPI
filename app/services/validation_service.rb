# frozen_string_literal: true

module ValidationService
  ENTITIES = %w[drug_order
  encounter
  obs
  orders
  patient
  patient_identifier
  patient_program
  patient_state
  person
  person_address
  person_attribute
  person_name
  pharmacies
  pharmacy_batch_item_reallocations
  pharmacy_batch_items
  pharmacy_batches
  pharmacy_obs
  pharmacy_stock_balances
  pharmacy_stock_verifications
  relationship]

  def self.validate_entity(entity)
    ENTITIES.include?(entity)
  end
end
