require 'test_helper'

class TumblelogControllerTest < ActionController::TestCase
  test "should get Get_Blog" do
    get :Get_Blog
    assert_response :success
  end

  test "should get Display_Blog" do
    get :Display_Blog
    assert_response :success
  end

end
