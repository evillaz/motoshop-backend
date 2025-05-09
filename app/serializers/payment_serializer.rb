class PaymentSerializer < ActiveModel::Serializer
  attributes :transaction_number, :amount, :issue_date

  belongs_to :sale
end
