require 'test_helper'

class AssetsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
