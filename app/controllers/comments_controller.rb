class CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create!(comment_params)
    # @comment.user_id = current_user.id
    redirect_to @photo
  end

  private

  def comment_params
    params.require(:comment).permit(:comment , :user_id , :photo_id)
  end
end
