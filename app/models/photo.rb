class Photo < ApplicationRecord
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  include ImageUploader[:image]
end
