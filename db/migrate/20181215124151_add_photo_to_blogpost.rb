class AddPhotoToBlogpost < ActiveRecord::Migration[5.2]
  def change
    add_column :blogposts, :photo, :string
  end
end
