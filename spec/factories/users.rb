# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { '小出' }
    sequence(:staff_num) { |n| "#{n}base58(20)" }
    sequence(:email) { |n| "tester#{n}@example.com" }
    password { 'Shogo1026' }
  end
end
