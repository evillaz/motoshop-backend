class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :transaction_number, :amount, :issue_date

  belongs_to :sale
end
