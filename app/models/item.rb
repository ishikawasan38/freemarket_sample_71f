class Item < ApplicationRecord
  # belongs_to :user
  # belongs_to :barand
  # belongs_to :category
  # has_many :purchased
  has_many :photos
  accepts_nested_attributes_for :images
end
