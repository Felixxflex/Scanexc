class Sport < ApplicationRecord
    has_one_attached :photo
      
      validates :title, presence: true
      validates :description, presence: true
      validates :points, presence: true
    end