require 'test_helper'

class CompostersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get composters_new_url
    assert_response :success
  end

  test "should get index" do
    get composters_index_url
    assert_response :success
  end

  test "should get show" do
    get composters_show_url
    assert_response :success
  end

end
