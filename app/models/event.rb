class Event < ApplicationRecord
  belongs_to :user
  has_many :department_events
  has_many :departments, through: :department_events

  validates :title, presence: true
  validates :start_time, presence: true
  validates :content, presence: true
  validates :user, presence: true
end
