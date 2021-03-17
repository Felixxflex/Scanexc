class Technologie < ApplicationRecord
    has_one_attached :photo
      
      validates :title, presence: true
      validates :description, presence: true
      validates :points, presence: true
      validates :stock, presence: true
    end