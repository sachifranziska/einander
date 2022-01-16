FactoryBot.define do
  factory :suggestion do
    content { Faker::Lorem.sentence }

    association :user
    association :question
  end
end