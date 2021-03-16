class Department < ApplicationRecord
  has_many :department_events
  has_many :events, through: :department_events
  validates :name, presence: true
end