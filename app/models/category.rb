class Category < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :manufacturers
  has_ancestry
end
