class Maker < ApplicationRecord
  has_many :cars
  belongs_to :category
end
