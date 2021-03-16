class Event < ApplicationRecord
  belongs_to :user
  belongs_to :department

  validates :title, presence: true
  validates :start_time, presence: true
  validates :content, presence: true
  validates :user, presence: true
  validates :department, presence: true
end
