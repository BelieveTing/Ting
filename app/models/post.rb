class Post < ApplicationRecord
    has_many_attached :profilepics
    # mount_uploader :image, S3Uploader
    # dependent 필수
    # has_many :likes, dependent: :destroy
    # has_many :users, through: :likes
    # has_one_attached :profile_picture
    # has_many :friends, :foreign_key => "owner_id", class_name: 'Post', :dependent => :destroy
    # has_many :users, through: :friends, :dependent => :destroy
    # has_many :make_friends, :dependent => :destroy
    # # dependent 필수
    # has_many :comments, :dependent => :destroy
    # has_many :hearts
    # has_many :emails, through: :hearts, class_name: 'User', :foreign_key => 'email_id', :dependent => :destroy
    # # has_many :hearts, :foreign_key => "owner_id", class_name: 'Post', :dependent => :destroy
end
