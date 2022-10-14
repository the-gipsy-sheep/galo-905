class List < ApplicationRecord
  belongs_to :user
  belongs_to :gift

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: { maximum: 30 }
  validates :description, length: { maximum: 280 }
end
