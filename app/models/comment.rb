class Comment < ApplicationRecord
  # Associations
  belongs_to :post

  # Validation
  validates :post, presence: true
  validates :author, presence: true
  validates :text, presence: true
end
