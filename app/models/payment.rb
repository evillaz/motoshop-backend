class Payment < ApplicationRecord
  belongs_to :sale

  validates :amount, presence: true
  validates :method, presence: true
end
