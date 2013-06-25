require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get addstream" do
    get :addstream
    assert_response :success
  end

  test "should get removestream" do
    get :removestream
    assert_response :success
  end

end
