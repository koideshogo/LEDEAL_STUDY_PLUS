class Output < ApplicationRecord
  validates :body, :salon_name, :user_id, :post_id, presence: true
  validates :user_id, uniqueness: { scope: [:post_id] }

  belongs_to :user
  belongs_to :post
end
