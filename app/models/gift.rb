class Gift < ApplicationRecord
  has_one_attached :photo
  belongs_to :list
  has_many :comments, dependent: :destroy
  belongs_to :user, through: :list

  validates :url, :title, presence: true
  validates :title, length: { maximum: 50 }
  validates :description, length: { maximum: 280 }
end
