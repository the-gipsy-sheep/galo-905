class List < ApplicationRecord
  belongs_to :user
  has_many :gifts, dependent: :destroy

  validates :title, :privacy, presence: true
  validates :title, length: { maximum: 30 }
  validates :description, length: { maximum: 280 }
  validates :privacy, inclusion: { in: %w[pública privada] }
end
