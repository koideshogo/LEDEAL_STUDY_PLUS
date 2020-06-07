# frozen_string_literal: true

FactoryBot.define do
  factory :output do
    body 'MyText'
    salon_name 'MyText'
    user
    post
  end
end
