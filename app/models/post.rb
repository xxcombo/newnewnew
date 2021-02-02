class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  belongs_to :domitory

end
