# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n|  "testly#{n}@rollinsit.com" }
    password "sufficientchar5"
    confirmed_at "2014-12-02 22:02:15 UTC"
    confirmation_sent_at "2014-12-02 22:02:08 UTC"
    created_at "2014-12-02 22:00:08 UTC"
    updated_at "2014-12-02 22:02:15 UTC"
#    association :access_level, user_level: 100
    
    factory :user_with_access_level_100 do
      association :access_level, user_level: 100
    end

    factory :user_with_access_level_75 do
     association :access_level, user_level: 75
    end
    
    factory :editor, class: User do
      sequence(:email) {|n|  "testly#{n}@rollinsit.com" }
      password "sufficientchar5"
      confirmed_at "2014-12-02 22:02:15 UTC"
      confirmation_sent_at "2014-12-02 22:02:08 UTC"
      created_at "2014-12-02 22:00:08 UTC"
      updated_at "2014-12-02 22:02:15 UTC"
      association :access_level, user_level: 300, admin: true
      
    end

  end

  
end
