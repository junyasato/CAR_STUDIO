class Car < ApplicationRecord
  belongs_to :maker
  belongs_to :user
  has_many :items
  has_many :specs
  has_many :body_type_cars
  has_many :conditions
  has_many :body_types, through: :body_type_cars
  mount_uploader :image, ThumbnailUploader
  enum repaired: { "なし": 0 ,"あり": 1}
end
