class Task < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :validate_end_date_not_earier_than_start_date

  private

  def validate_end_date_not_earier_than_start_date
    errors.add(:end_date, "はstart_dateより後の日付を入力してください")
  end
end
