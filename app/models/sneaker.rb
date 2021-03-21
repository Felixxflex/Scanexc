class Sneaker < ApplicationRecord
    has_one_attached :photo
    has_many :stock
      
      validates :title, presence: true
      validates :description, presence: true
      validates :points, presence: true
    end