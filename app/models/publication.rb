class Publication < ApplicationRecord
  attribute :status, :boolean, default: false

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :status, inclusion: { in: [true, false] }
  validates :label, numericality: { only_integer: true, array: true }

  # Associations
  belongs_to :label

  # Enums
  ## Status
end