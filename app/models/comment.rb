class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :department

  validates :text, presence: true
end
