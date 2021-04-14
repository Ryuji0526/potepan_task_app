class Task < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :valedate_end_date_not_earier_than_start_date
end
