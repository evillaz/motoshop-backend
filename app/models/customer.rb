class Customer < ApplicationRecord
  validates :nombre, :primerApellido, :dni, presence: true
  validates :dni, uniqueness: true

  has_many :sales, foreign_key: :dni, primary_key: :dni
end
