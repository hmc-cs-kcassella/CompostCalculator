require 'test_helper'

class ComposterUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @composter_update = composter_updates(:one)
  end

  test "should get index" do
    get composter_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_composter_update_url
    assert_response :success
  end

  test "should create composter_update" do
    assert_difference('ComposterUpdate.count') do
      post composter_updates_url, params: { composter_update: { cNRatio: @composter_update.cNRatio, cid: @composter_update.cid, cuid: @composter_update.cuid, dryWeight: @composter_update.dryWeight, wetWeight: @composter_update.wetWeight } }
    end

    assert_redirected_to composter_update_url(ComposterUpdate.last)
  end

  test "should show composter_update" do
    get composter_update_url(@composter_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_composter_update_url(@composter_update)
    assert_response :success
  end

  test "should update composter_update" do
    patch composter_update_url(@composter_update), params: { composter_update: { cNRatio: @composter_update.cNRatio, cid: @composter_update.cid, cuid: @composter_update.cuid, dryWeight: @composter_update.dryWeight, wetWeight: @composter_update.wetWeight } }
    assert_redirected_to composter_update_url(@composter_update)
  end

  test "should destroy composter_update" do
    assert_difference('ComposterUpdate.count', -1) do
      delete composter_update_url(@composter_update)
    end

    assert_redirected_to composter_updates_url
  end
end
