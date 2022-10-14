class Gift < ApplicationRecord
  has_one_attached :photo
  has_many :lists
  has_many :comments, dependent: :destroy

  validates :url, :title, presence: true
  validates :title, length: { maximum: 50 }
  validates :description, length: { maximum: 280 }
end
