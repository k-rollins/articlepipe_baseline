# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :access_level do
    user_level 0
    suspended false
    banned false
    admin false
    admin_level 0
  end
end
