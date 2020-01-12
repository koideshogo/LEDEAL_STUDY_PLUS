class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :staff_num, :integer, null: false
    add_index :users, [:staff_num], unique: true
  end
end
