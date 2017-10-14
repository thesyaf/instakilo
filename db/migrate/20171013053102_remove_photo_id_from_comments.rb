class RemovePhotoIdFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :photo_id, :text
  end
end
