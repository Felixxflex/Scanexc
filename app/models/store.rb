class Store < ApplicationRecord 
    has_one_attached :business_image
    has_many_attached :promotion_photos

    include PgSearch::Model
  pg_search_scope :search_by_business_title_and_business_description,
    against: [ :business_title, :business_description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }


   
    # def search_books
    #     stores = stores.where(["business_category LIKE ?",business_category]) if category.present?
    #     return stores
    # end
end