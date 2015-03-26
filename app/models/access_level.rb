class AccessLevel < ActiveRecord::Base
  belongs_to :user
  after_create {|al| al.user_level=50; al.save }

  [:>, :<, :>=, :<=, :==].each do |comparison|
    define_method(comparison) {|other_value| user_level.send(comparison, other_value) }
       
  end
  

end
