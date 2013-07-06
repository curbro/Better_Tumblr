require 'test_helper'

class TumblelogControllerTest < ActionController::TestCase
  test "should get Tumblelog" do
    get :Tumblelog
    assert_response :success
  end

end
