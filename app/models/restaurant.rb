class Restaurant < ApplicationRecord

  has_one_attached :business_image
  has_many_attached :promotion_photos


  include PgSearch::Model
  pg_search_scope :search_by_business_title_and_business_description,
    against: [ :business_title, :business_description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end


