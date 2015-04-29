require 'test_helper'

class UnitsControllerTest < ActionController::TestCase

  test "get index" do
    get :index
    assert_response :success
  end

end
