require 'test_helper'

class FirstControllerTest < ActionDispatch::IntegrationTest
  test "should get second" do
    get first_second_url
    assert_response :success
  end

  test "should get third" do
    get first_third_url
    assert_response :success
  end

end
