FactoryBot.define do
  factory :doc do
    sequence(:title) { |n| "test#{n} title" }
    content { "test content" }
    association :user
  end
end
