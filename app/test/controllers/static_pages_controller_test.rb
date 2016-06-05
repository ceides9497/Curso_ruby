require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "UCBTweet"
  end

  test "should get about" do
    get :about_us
    assert_response :success
    assert_select "title", "About | UCBTweet"
  end

end
