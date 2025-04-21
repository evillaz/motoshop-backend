class Motorcycle < ApplicationRecord
  has_one :sale, foreign_key: :factura, primary_key: :factura
end
