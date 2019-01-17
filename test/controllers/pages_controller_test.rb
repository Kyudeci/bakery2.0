require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get pages_main_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get cookie" do
    get pages_cookie_url
    assert_response :success
  end

  test "should get cake" do
    get pages_cake_url
    assert_response :success
  end

  test "should get cupcake" do
    get pages_cupcake_url
    assert_response :success
  end

end
