class Brand < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :available, inclusion: { in: [true, false] }

  # Associations
  has_many :products, dependent: :destroy
end
