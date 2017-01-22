class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :name, presence: true
    validates :name, length: { maximum: 50 }
    validates :email, presence: true
    validates :email, length: { maximum: 255 }
    validates :email, format: { with: VALID_EMAIL_REGEX }
end
