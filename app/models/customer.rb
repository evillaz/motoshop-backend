class Customer < ApplicationRecord
  validates :nombre, :primerApellido, :dni, presence: true
  validates :dni, uniqueness: true
end
