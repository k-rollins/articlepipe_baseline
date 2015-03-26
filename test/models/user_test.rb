require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "access level obj created and est to 050 when user created" do
     user = User.create(email: "testy.the.email@rollisnit.com", password: "mysuperduperpassword")
     assert_respond_to(user, :access_level, "Should have an access_levels obj")
     assert user.access_level.user_level == 50, "Should have an user_level of 50"
  end


  test "On confirmation a user_level of 50 is changed to 100" do
    user = User.create(email: "testly@rollinsit.com", password: "secretsecret")
    user.confirm!

    assert_equal 100, user.access_level.user_level
  end

end
