# frozen_string_literal: true

class InitSchema < ActiveRecord::Migration[5.2]
  def up
    create_table 'categories', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string 'ancestry'
      t.string 'name', null: false
      t.string 'image'
      t.bigint 'category_id'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.index ['ancestry'], name: 'index_categories_on_ancestry'
      t.index ['category_id'], name: 'index_categories_on_category_id'
    end
    create_table 'likes', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer 'user_id', null: false
      t.integer 'post_id', null: false
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.index ['post_id'], name: 'index_likes_on_post_id'
      t.index ['user_id'], name: 'index_likes_on_user_id'
    end
    create_table 'outputs', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.text 'body'
      t.text 'salon_name'
      t.bigint 'user_id'
      t.bigint 'post_id'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.index ['post_id'], name: 'index_outputs_on_post_id'
      t.index ['user_id'], name: 'index_outputs_on_user_id'
    end
    create_table 'posts', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.text 'body'
      t.string 'title'
      t.string 'youtube_url'
      t.bigint 'category_id'
      t.bigint 'category1'
      t.bigint 'category2'
      t.string 'release_date'
      t.bigint 'user_id'
      t.integer 'likes_count'
      t.index ['category_id'], name: 'fk_rails_9b1b26f040'
      t.index ['user_id'], name: 'index_posts_on_user_id'
    end
    create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string 'email', default: '', null: false
      t.string 'encrypted_password', default: '', null: false
      t.string 'reset_password_token'
      t.datetime 'reset_password_sent_at'
      t.datetime 'remember_created_at'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.string 'name', null: false, default: ''
      t.integer 'staff_num', null: false
      t.boolean 'admin', default: false
      t.index ['email'], name: 'index_users_on_email', unique: true
      t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
      t.index ['staff_num'], name: 'index_users_on_staff_num', unique: true
    end
    add_foreign_key 'categories', 'categories'
    add_foreign_key 'outputs', 'posts'
    add_foreign_key 'outputs', 'users'
    add_foreign_key 'posts', 'categories'
    add_foreign_key 'posts', 'users'
  end

  def down
    raise ActiveRecord::IrreversibleMigration, 'The initial migration is not revertable'
  end
end
