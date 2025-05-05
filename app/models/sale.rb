class Sale < ApplicationRecord
  belongs_to :motorcycle, foreign_key: :factura, primary_key: :factura
  belongs_to :customer, foreign_key: :dni, primary_key: :dni, optional: true
  
  has_one :title
  has_one :plate
  validates :total_amount, presence: true
end
