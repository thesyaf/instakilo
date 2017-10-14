class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.text :photo_id, foreign_key: true
      t.references :commenter, foreign_key: true


      t.timestamps
    end
  end
end
