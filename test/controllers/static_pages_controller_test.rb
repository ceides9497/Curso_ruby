require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | UCBTweet"
    assert_select "title", "About | UCBTweet"
  end

end
