class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  acts_as_taggable
  mount_uploader :Picture
  belongs_to :domitory

end
