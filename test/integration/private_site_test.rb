require 'test_helper'

class PrivateSiteTest < ActionDispatch::IntegrationTest

  test "should get an error when accessing buyer route" do
    assert_raises ActionController::RoutingError do
      host! "foobar.com"
      get "/buyer"
    end
  end

  test "should get an error when accessing buyer route with www" do
    assert_raises ActionController::RoutingError do
      host! "www.foobar.com"
      get "/buyer"
    end
  end

  test "should allow access to buyer route any subdomain" do
    %w[tenant foobar hi].each do |subdomain|
      host! "#{subdomain}.someurl.com"
      get "/buyer"
      assert_response :success
    end
  end

end
