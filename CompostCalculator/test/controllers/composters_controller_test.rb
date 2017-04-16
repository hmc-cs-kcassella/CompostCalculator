require 'test_helper'

class CompostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @composter = composters(:one)
  end

  test "should get index" do
    get composters_url
    assert_response :success
  end

  test "should get new" do
    get new_composter_url
    assert_response :success
  end

  test "should create composter" do
    assert_difference('Composter.count') do
      post composters_url, params: { composter: { cid: @composter.cid, flipTime: @composter.flipTime, name: @composter.name, temperature: @composter.temperature, uid: @composter.uid } }
    end

    assert_redirected_to composter_url(Composter.last)
  end

  test "should show composter" do
    get composter_url(@composter)
    assert_response :success
  end

  test "should get edit" do
    get edit_composter_url(@composter)
    assert_response :success
  end

  test "should update composter" do
    patch composter_url(@composter), params: { composter: { cid: @composter.cid, flipTime: @composter.flipTime, name: @composter.name, temperature: @composter.temperature, uid: @composter.uid } }
    assert_redirected_to composter_url(@composter)
  end

  test "should destroy composter" do
    assert_difference('Composter.count', -1) do
      delete composter_url(@composter)
    end

    assert_redirected_to composters_url
  end
end
