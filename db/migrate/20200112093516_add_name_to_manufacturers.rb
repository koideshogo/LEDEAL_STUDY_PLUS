class AddNameToManufacturers < ActiveRecord::Migration[5.2]
  def change
    add_column :manufacturers, :name, :string
  end
end
