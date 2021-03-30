class Local < ApplicationRecord
    has_one_attached :business_image
    has_many_attached :promotion_photos
#   searchkick  
end