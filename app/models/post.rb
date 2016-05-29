class Post < ApplicationRecord
  # Associations
  has_many :comments

  # Validation
  validates :title, presence: true
  validates :body, presence: true
end
