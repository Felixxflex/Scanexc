class User < ApplicationRecord
    has_many :winpoint
    has_one_attached :photo
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable,
           :registerable, :confirmable

        
        
        validates :winpoints, presence: true
        validates :username, presence: true
        validates :full_name, presence: true
        validates :plz, presence: true
        validates :street_name, presence: true
        validates :house_number, presence: true
        validates :city, presence: true
        
  
           def self.from_omniauth(auth)
            where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
              user.email = auth.info.email
              user.password = Devise.friendly_token[0, 20]
              user.full_name = auth.info.name
              # If you are using confirmable and the provider(s) you use validate emails,
              # uncomment the line below to skip the confirmation emails.
              # user.skip_confirmation!
            end
          end
  end
  