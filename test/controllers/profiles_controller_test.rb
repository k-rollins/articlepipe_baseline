require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  def setup
    @user = create(:user)
    @user.confirm!
    @user.save
    sign_in @user
  end
  
  test "should view profiles index if logged in" do
    get :index
    assert_response :success
  end

  test "should not view profiles index if not logged in" do
    sign_out @user
    get :index
    assert_redirected_to new_user_session_path
  end
  
test "should get access to edit ones own profile" do
    get :edit, id: @user.profile
    assert_response :success
  end
    
  test "should not get edit if access_level is less than 100" do
    @user.access_level.user_level = 75
    @user.access_level.save
    get :edit, id: @user.profile.id
    
    assert_redirected_to(:controller => "pages", :action => "home")
  end

  test "should not get edit if current_user doesn't match profile.user_id" do
      
    profile = create(:profile, user_id: @user.id + 5)
    get :edit, id: profile
    
    assert_redirected_to(:controller => "pages", :action => "home")
  end

  test "should not be able to change user_id" do
    @profile = @user.profile
    old_user_id = @profile.user_id
    put :update, id: @profile,  :profile => {
      "user_id"=> @profile.user_id + 5,
      "display_name"=> @profile.display_name,
      "tagline"=>"Better to be Early and Have Time to Read",
      "bio"=>"I read books. I write decision engines.",
      "twitter"=>"@jj22193_alive",
      "personal_url"=>"http://jj.rollinsit.com"
    }
   
    assert_equal(old_user_id, assigns["profile"]['user_id'])
  end  
end
