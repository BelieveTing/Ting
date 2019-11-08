class Post < ApplicationRecord
    has_one_attached :profile_picture
    has_many :friends
    has_many :users, through: :friends
end
