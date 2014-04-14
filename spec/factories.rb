FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password 'bob'
    password_confirmation { |u| u.password }
  end

  factory :question do
    header 'A Question'
    content 'Some content'
  end
end
