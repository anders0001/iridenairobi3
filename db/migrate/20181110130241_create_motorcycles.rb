class CreateMotorcycles < ActiveRecord::Migration[5.2]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :price
      t.string :picture

      t.timestamps
    end
  end
end
