# frozen_string_literal: true

class Post < ApplicationRecord
  validates :body, :youtube_url, :title, presence: true
  belongs_to :manufacturer, optional: true
  belongs_to :user, optional: true
  belongs_to :category
end
