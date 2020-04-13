# class Manufacturer < ApplicationRecord
#   mount_uploader :image, ImageUploader
#   validates :name, presence: true, uniqueness: true
#   belongs_to :user, optional: true
#   has_many :posts
#   belongs_to :category
# end
