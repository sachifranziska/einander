FactoryBot.define do
  factory :question do
    title { Faker::Lorem.sentence }
    category_id { 2 }
    content { Faker::Lorem.sentence }

    association :user
  end
end