class Post < ApplicationRecord
  mount_uploader :Picture
  belongs_to :domitory
end
