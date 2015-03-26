require 'test_helper'

class AccessLevelTest < ActiveSupport::TestCase
  def setup
    @al = create(:access_level)
  end


  test "responds to comparison operators" do
   [:>, :<, :>=, :<=, :==].each do |comparison|
     assert @al.respond_to?(comparison), "access level should respond to #{comparison}"
   end
  
  end

  # test "the truth" do
  #   assert true
  # end
end
