class Label < ApplicationRecord
  # validaciones
  validates :name, presence: true
  validates :description, presence: true
  validates :available, inclusion: { in: [true, false] }

  # Associations
  has_many :publication
  
end






