class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.belongs_to :photo, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
