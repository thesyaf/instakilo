class LikesController < ApplicationController
  respond_to :js

  def like
    @user = current_user
    @photo = Photo.find(params[:photo_id])
    @user.like!(@photo)
  end

  def unlike
    @user = current_user
    @like = @user.likes.find_by_photo_id(params[:photo_id])
    @photo = Photo.find(params[:photo_id])
    @like.destroy!
  end

end
