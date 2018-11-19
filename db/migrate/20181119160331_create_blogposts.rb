class CreateBlogposts < ActiveRecord::Migration[5.2]
  def change
    create_table :blogposts do |t|
      t.text :description
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
