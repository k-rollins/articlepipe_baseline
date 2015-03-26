require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
   test "profile display_name is no longer than 30 char" do
     profile = build(:profile)
     name = ""
     31.times do
       name << "a"
     end
     profile.display_name = name
     assert_not profile.valid?, "The display name must be greater than 3 characters and less than 30 characters"
     assert_not profile.errors[:display_name].empty?
   end

   test "display name is no shorter than 4 characters" do
     profile = build(:profile)
     profile.display_name = "abc"
     assert_not profile.valid?, "The display name must be greater than 3 characters and less than 30 characters"
     assert_not profile.errors[:display_name].empty? 
  end

  test "profile should have a display_name" do
    profile = build(:profile)
    profile.display_name = nil
    assert_not profile.valid?
    assert_not profile.errors[:display_name].empty?

  end

  test "tagline is a maximum of 140 char" do
    profile = build(:profile)
    taggy = ""
    141.times do
      taggy << "a"
    end
    profile.tagline = taggy
    assert_not profile.valid?
    assert_not profile.errors[:tagline].empty?
  end

  test "bio is maximum of 1200 char" do
    profile = build(:profile)
    bio = ""
    1201.times do
      bio << "a"
    end
    profile.bio = bio
    assert_not profile.valid?
    assert_not profile.errors[:bio].empty?
  end

  test "the atmark is chopped off the twitter handle before being saved" do
    profile = build(:profile)
    profile.twitter = "@kevinrollins"
    profile.save
    my_id = profile.id
    assert_equal "kevinrollins", Profile.find(my_id).twitter
  end
end
