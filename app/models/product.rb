class Product < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: %w[active inactive discontinued] }

  # Associations
  belongs_to :brand

  # Enums
  ## Status
  enum status: {
    active: 'activo',
    inactive: 'inactivo',
    discontinued: 'suspendido'
  }, _default: 'activo'
end
