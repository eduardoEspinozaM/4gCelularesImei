require 'test_helper'

class FormaPagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forma_pago = forma_pagos(:one)
  end

  test "should get index" do
    get forma_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_forma_pago_url
    assert_response :success
  end

  test "should create forma_pago" do
    assert_difference('FormaPago.count') do
      post forma_pagos_url, params: { forma_pago: { nombre: @forma_pago.nombre } }
    end

    assert_redirected_to forma_pago_url(FormaPago.last)
  end

  test "should show forma_pago" do
    get forma_pago_url(@forma_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_forma_pago_url(@forma_pago)
    assert_response :success
  end

  test "should update forma_pago" do
    patch forma_pago_url(@forma_pago), params: { forma_pago: { nombre: @forma_pago.nombre } }
    assert_redirected_to forma_pago_url(@forma_pago)
  end

  test "should destroy forma_pago" do
    assert_difference('FormaPago.count', -1) do
      delete forma_pago_url(@forma_pago)
    end

    assert_redirected_to forma_pagos_url
  end
end
