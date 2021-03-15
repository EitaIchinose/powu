class Department < ApplicationRecord
  has_many :events

  validates :name, presence: true
end
