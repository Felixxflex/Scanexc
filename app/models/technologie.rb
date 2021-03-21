class Technologie < ApplicationRecord
    has_one_attached :photo
    has_many :stocks  

      validates :title, presence: true
      validates :description, presence: true
      validates :points, presence: true
      validates :stock, presence: true
    end