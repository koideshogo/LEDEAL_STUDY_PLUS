# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    body { 'hogehogehogehogehogehohgoge' }
    youtube_url { 'GqG3eqy2QqU' }
    title { 'hogehoge' }
    release_date { '2020-04-04' }
    category
    category1 { 1 }
    category2 { 10 }
    user
    likes_count nil
  end
end
