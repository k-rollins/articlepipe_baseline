require 'test_helper'

class BasicUITest < ActionDispatch::IntegrationTest

  test "sign in displayed if not logged in" do
    get root_path
    assert_select( 'div#actions_menu', /Sign in/)
  end


    
end
