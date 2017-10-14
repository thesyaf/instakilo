class RemoveCommenterRefFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_reference :comments, :commenter, foreign_key: true
  end
end
