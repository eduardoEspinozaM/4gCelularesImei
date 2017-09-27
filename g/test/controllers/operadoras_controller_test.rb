require 'test_helper'

class OperadorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operadora = operadoras(:one)
  end

  test "should get index" do
    get operadoras_url
    assert_response :success
  end

  test "should get new" do
    get new_operadora_url
    assert_response :success
  end

  test "should create operadora" do
    assert_difference('Operadora.count') do
      post operadoras_url, params: { operadora: { costo: @operadora.costo, nombre: @operadora.nombre, pais_id: @operadora.pais_id } }
    end

    assert_redirected_to operadora_url(Operadora.last)
  end

  test "should show operadora" do
    get operadora_url(@operadora)
    assert_response :success
  end

  test "should get edit" do
    get edit_operadora_url(@operadora)
    assert_response :success
  end

  test "should update operadora" do
    patch operadora_url(@operadora), params: { operadora: { costo: @operadora.costo, nombre: @operadora.nombre, pais_id: @operadora.pais_id } }
    assert_redirected_to operadora_url(@operadora)
  end

  test "should destroy operadora" do
    assert_difference('Operadora.count', -1) do
      delete operadora_url(@operadora)
    end

    assert_redirected_to operadoras_url
  end
end
