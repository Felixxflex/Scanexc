class Restaurant < ApplicationRecord

  has_one_attached :business_image

  searchkick
end


