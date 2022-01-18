FactoryBot.define do
  factory :blog do
    title { Faker::Lorem.sentence }
    category_id { 2 }
    content { Faker::Lorem.sentence }

    after(:build) do |blog|
      blog.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    association :user
  end
end