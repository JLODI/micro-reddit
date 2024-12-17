class User < ApplicationRecord
    validates :username, presence: true, length: { maximum: 12 }
    validates :email, presence: true
    validates :password, presence: true, length: { minimum: 5 }
end
