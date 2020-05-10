class Post < ApplicationRecord
  validates :body, :youtube_url, :title, :release_date, presence: true
  belongs_to :user
  belongs_to :category
  has_many :likes, dependent: :destroy
  has_many :outputs, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
