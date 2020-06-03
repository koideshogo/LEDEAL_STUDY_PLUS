# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '動画投稿' do
    it 'body,youtube_url,title,release_dataが全てなければ投稿できない' do
      post = FactoryBot.build(:post)
      expect(post).to be_valid
    end
    it 'titleがなければ投稿できない' do
      post = build(:post, title: nil)
      post.valid?
      expect(post.errors[:title]).to include('を入力してください')
    end
    it 'bodyがなければ投稿できない' do
      post = build(:post, body: nil)
      post.valid?
      expect(post.errors[:body]).to include('を入力してください')
    end
    it 'release_dateがなければ投稿できない' do
      post = build(:post, release_date: nil)
      post.valid?
      expect(post.errors[:release_date]).to include('を入力してください')
    end
    it 'youtube_urlがなければ投稿できない' do
      post = build(:post, youtube_url: nil)
      post.valid?
      expect(post.errors[:youtube_url]).to include('を入力してください')
    end
    it 'categoryがなければ投稿できない' do
      post = build(:post, category_id: nil)
      post.valid?
      expect(post.errors[:category_id]).to include('を入力してください')
    end
    it 'categoryがなければ投稿できない' do
      post = build(:post, category1: nil)
      post.valid?
      expect(post.errors[:category1]).to include('を入力してください')
    end
    it 'categoryがなければ投稿できない' do
      post = build(:post, category2: nil)
      post.valid?
      expect(post.errors[:category2]).to include('を入力してください')
    end
  end
end
