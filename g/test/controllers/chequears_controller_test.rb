require 'test_helper'

class ChequearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chequear = chequears(:one)
  end

  test "should get index" do
    get chequears_url
    assert_response :success
  end

  test "should get new" do
    get new_chequear_url
    assert_response :success
  end

  test "should create chequear" do
    assert_difference('Chequear.count') do
      post chequears_url, params: { chequear: { imei: @chequear.imei } }
    end

    assert_redirected_to chequear_url(Chequear.last)
  end

  test "should show chequear" do
    get chequear_url(@chequear)
    assert_response :success
  end

  test "should get edit" do
    get edit_chequear_url(@chequear)
    assert_response :success
  end

  test "should update chequear" do
    patch chequear_url(@chequear), params: { chequear: { imei: @chequear.imei } }
    assert_redirected_to chequear_url(@chequear)
  end

  test "should destroy chequear" do
    assert_difference('Chequear.count', -1) do
      delete chequear_url(@chequear)
    end

    assert_redirected_to chequears_url
  end
end
