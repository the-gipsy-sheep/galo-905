class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :lists
  has_many :comments
  has_many :gifts, through: :lists

  # followers relations
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  validates :user_name, uniqueness: true, presence: true
  validates :user_name, length: { in: 6..30 }

  include PgSearch::Model
  multisearchable against: %i[user_name first_name last_name]

  after_save :create_default_list

  private

  def create_default_list
    List.create(title: "Lista Principal", description: "Mi Lista Principal", privacy: "pública", user_id: self.id)
  end
end
