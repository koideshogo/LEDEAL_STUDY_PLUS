# frozen_string_literal: true

class Post < ApplicationRecord
  validates :body, :youtube_url, :title, :release_date, presence: true
  belongs_to :user, optional: true
  belongs_to :category
end
