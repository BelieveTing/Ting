class Post < ApplicationRecord
    # has_many_attached :profilepics
    mount_uploader :profilepics, ProfilepicsUploader
    
        # 이미지를 가진 게시글 삭제 시 AWS S3서버에도 자동 삭제처리
    before_destroy :destroy_assets
 
    def destroy_assets
        self.image.remove! if self.image
        self.save!
    end
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
