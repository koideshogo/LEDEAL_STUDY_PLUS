require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "動画投稿" do
    it "body,youtube_url,title,release_dataが全てなければ投稿できない" do
      post = build(:post)
      expect(post).to be_valid
    end
  end
end
