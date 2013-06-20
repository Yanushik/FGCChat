require 'test_helper'

class ChatControllerTest < ActionController::TestCase
  test "should get chatroom" do
    get :chatroom
    assert_response :success
  end

end
