class Car < ApplicationRecord
  belongs_to :maker
  has_many :body_type_cars
  has_many :body_types, through: :body_type_cars
  enum repaired: { "なし": 0 ,"あり": 1}
end
