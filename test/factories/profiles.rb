# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    user_id 1
    display_name "MyString"
    tagline "MyString"
    bio "MyText"
    twitter "MyString"
    personal_url "MyString"
  end
end
