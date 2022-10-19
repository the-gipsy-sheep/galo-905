class Gift < ApplicationRecord
  has_one_attached :photo
  belongs_to :list
  has_many :comments, dependent: :destroy

  validates :url, :title, presence: true
  validates :title, length: { maximum: 50 }
  validates :description, length: { maximum: 280 }

  include PgSearch::Model
  pg_search_scope :search_by_gift, against: %i[title price description], using: {
    tsearch: { prefix: true }
  }
end
