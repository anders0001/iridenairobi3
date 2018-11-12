class AddTypeToMotorcycle < ActiveRecord::Migration[5.2]
  def change
    add_column :motorcycles, :motorcycle_type, :string
  end
end
