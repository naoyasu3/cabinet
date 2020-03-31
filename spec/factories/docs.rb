FactoryBot.define do
  factory :doc do
    title { "test title" }
    content { "test content" }
    association :user
  end
end
