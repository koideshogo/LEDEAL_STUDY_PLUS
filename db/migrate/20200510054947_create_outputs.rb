class CreateOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :outputs do |t|
      t.text :body
      t.text :salon_name
      t.references :user_id, foreign_key: true
      t.references :post_id, foreign_key: true

      t.timestamps
    end
  end
end
