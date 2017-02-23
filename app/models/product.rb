class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  mount_uploader :des_image, ImageUploader
  mount_uploader :app_image, ImageUploader

  has_many :reviews
  belongs_to :category

  acts_as_votable
end
