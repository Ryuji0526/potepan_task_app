class Task < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :validate_title_not_including_
end
