class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments

  include ImageUploader[:image]
end
