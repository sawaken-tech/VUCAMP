class Image < ApplicationRecord
  belongs_to :camp
  mount_uploader :image, ImageUploader
end
