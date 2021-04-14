class Task < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate  :validate_start_date_not_past_date, :validate_end_date_not_earier_than_start_date

  private

  def validate_start_date_not_past_date
    errors.add(:start_date, "は、きょう")
  end

  def validate_end_date_not_earier_than_start_date
    errors.add(:end_date, "は、開始日より後の日付を入力してください") if end_date < start_date
  end
end
