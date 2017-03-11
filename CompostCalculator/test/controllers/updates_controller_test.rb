require 'test_helper'

class UpdatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get updates_new_url
    assert_response :success
  end

  test "should get index" do
    get updates_index_url
    assert_response :success
  end

  test "should get show" do
    get updates_show_url
    assert_response :success
  end

end
