class ElectronicReceiptSerializer < ActiveModel::Serializer
  attributes :receipt_number, :issue_date

  belongs_to :sale
end
