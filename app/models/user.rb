class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id

  validates :name, presence: true, allow_blank: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }

  def last_three_posts
    posts.includes(:author).order(created_at: :DESC).limit(3)
  end
end
