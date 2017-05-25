require 'test_helper'

class RouteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get route_index_url
    assert_response :success
  end

  test "should get hello" do
    get route_hello_url
    assert_response :success
  end

  test "should get name" do
    get route_name_url
    assert_response :success
  end

  test "should get say" do
    get route_say_url
    assert_response :success
  end

  test "should get show" do
    get route_show_url
    assert_response :success
  end

  test "should get destroy" do
    get route_destroy_url
    assert_response :success
  end

end
