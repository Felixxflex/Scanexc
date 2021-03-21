class Restaurant < ApplicationRecord

  has_one_attached :business_image


    acts_as_taggable_on :cusine
    acts_as_taggable_on :price
    acts_as_taggable_on :delivery

    $cusines = ['Burgers', 'Alcohol', 'Breakfast', 'Cheese', 'Italian', 'Indian','French', 'Kebab' ,'Mexican','Fast Food','Thai','Chinese', 'Pizza', 'Mediterranean', 'Desserts', 'Coffee', 'Sea Food', 'Sushi', 'Healthy']
    $deliveries = ['yes', 'no']
    $prices = ['low', 'high']


    include PgSearch::Model
    pg_search_scope :global_search,
  against: [:business_title, :business_description],
  associated_against: {
    cusine: [:name],
    price: [:name],
    delivery: [:name]
  },
  using: {
    tsearch: { any_word: true }
  }
end


