class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :department
  has_one_attached :image

  validates :text, presence: true
end
