class Event < ApplicationRecord
  belongs_to :user
  belongs_to :department

  with_options presence: true do
    validates :title
    validates :start_time
  end
end
