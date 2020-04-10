class InitSchema < ActiveRecord::Migration[5.2]
  def up
    create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "ancestry"
      t.string :name, null: false
      t.index ["ancestry"], name: "index_categories_on_ancestry"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    create_table "manufacturers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "category_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "name"
      t.string "image"
    end
    create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.text "body"
      t.string "title"
      t.string "youtube_url"
      t.bigint "manufacturer_id"
      t.index ["manufacturer_id"], name: "index_posts_on_manufacturer_id"
    end
    create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "name", null: false
      t.integer "staff_num", null: false
      t.boolean "admin", default: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
      t.index ["staff_num"], name: "index_users_on_staff_num", unique: true
    end
    add_foreign_key "posts", "manufacturers"
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end