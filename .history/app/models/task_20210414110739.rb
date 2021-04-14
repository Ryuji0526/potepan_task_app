class Task < ApplicationRecord
  validates :title, presence: true, length:
  validates :start_date, presence: true
  validates :end_date, presence: true
end
