class Task < ApplicationRecord
  validates :name, presence: true
  validates :start_date, presence: true
  validates :name, presence: true
end
