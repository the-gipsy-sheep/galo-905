class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gift

  validates :content, presence: true
  validates :content, length: { maximum: 500 }
end
