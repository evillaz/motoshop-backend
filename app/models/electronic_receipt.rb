class ElectronicReceipt < ApplicationRecord
  belongs_to :sale
  validates :sale_id, uniqueness: true
  validates :receipt_number, presence: true

  before_create :set_default_issue_date

  private

  def set_default_issue_date
    self.issue_date ||= created_at || Time.current
  end
end
