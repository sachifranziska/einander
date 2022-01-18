FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials }
    email { Faker::Internet.free_email }
    password = Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }
    last_name { 'suzuki' }
    first_name { 'ichiro' }
    birth_date { Faker::Date.birthday }
    job { 'sales' }
    gender_id { 2 }
    country_id { 2 }
    city { 'Frankfurt' }
    experience_id { 2 }
    stay_length_id { 2 }
  end
end
