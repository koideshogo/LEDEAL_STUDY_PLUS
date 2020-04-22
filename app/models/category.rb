# frozen_string_literal: true

class Category < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :parent, class_name: :Category, foreign_key: :category_id, optional: true
  has_many :children, class_name: :Category, foreign_key: :category_id, dependent: :destroy
  has_many :posts, dependent: :destroy
end
