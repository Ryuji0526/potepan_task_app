class Task < ApplicationRecord

  validates :title, presence: true, length: {maximum: 30}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate  :validate_start_date_not_past_date, :validate_end_date_not_earier_than_start_date

  def date_format(date)
    date.strftime("%Y年%m月%d日")
  end

  private

  def validate_start_date_not_past_date
    unless start_date.blank?
      errors.add(:start_date, "は、今日より前(過去)の日付を入力できません。") if start_date < Date.today
    end
  end

  def validate_end_date_not_earier_than_start_date
    unless end_date.blank?
      errors.add(:end_date, "は、開始日より後の日付を入力してください") if end_date < start_date
    end
  end
end
