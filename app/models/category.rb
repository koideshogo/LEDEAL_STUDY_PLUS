class Category < ApplicationRecord
  has_many :manufacturers
  has_ancestry
end
