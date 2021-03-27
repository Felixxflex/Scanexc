class Store < ApplicationRecord
    has_one_attached :business_image
    searchkick
end