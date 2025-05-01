class Sale < ApplicationRecord
  belongs_to :motorcycle, foreign_key: :factura, primary_key: :factura
  belongs_to :customer, foreign_key: :dni, primary_key: :dni, optional: true
  
  has_one :titulo
  has_one :placa
  validates :total_amount, presence: true
end
