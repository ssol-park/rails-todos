FactoryBot.define do
  factory :todo do
    sequence(:title) { |n| "할일 #{n}" }
    created_by { "psr" }
  end
end