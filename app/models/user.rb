class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :lists
  has_many :comments
  has_many :gifts, through: :lists

  validates :user_name, uniqueness: true, presence: true
  validates :user_name, length: { in: 6..30 }
end
