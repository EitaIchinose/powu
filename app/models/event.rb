class Event < ApplicationRecord
  belongs_to :user
  has_many :department_events
  has_many :departments, through: :department_events
end
