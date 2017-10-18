class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :likes, dependent: :destroy
         has_many :photos, through: :likes
         
  has_many :photos
  has_one :profile



  # creates a new like row with photo_id and user_id
  def like!(photo)
    self.likes.create!(photo_id: photo.id)
  end

  # destroys a like with matching photo_id and user_id
  def unlike!(photo)
    like = self.likes.find_by_photo_id(photo.id)
    like.destroy!
  end

  # returns true or false if a photo is liked by user
  def like?(photo)
    self.likes.find_by_photo_id(photo.id)
  end
end
