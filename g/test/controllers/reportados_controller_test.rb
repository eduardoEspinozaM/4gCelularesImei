require 'test_helper'

class ReportadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reportado = reportados(:one)
  end

  test "should get index" do
    get reportados_url
    assert_response :success
  end

  test "should get new" do
    get new_reportado_url
    assert_response :success
  end

  test "should create reportado" do
    assert_difference('Reportado.count') do
      post reportados_url, params: { reportado: { ciudad: @reportado.ciudad, estadoP: @reportado.estadoP, estadoR: @reportado.estadoR, imei: @reportado.imei, marca: @reportado.marca, modelo: @reportado.modelo, operador: @reportado.operador, tipo: @reportado.tipo } }
    end

    assert_redirected_to reportado_url(Reportado.last)
  end

  test "should show reportado" do
    get reportado_url(@reportado)
    assert_response :success
  end

  test "should get edit" do
    get edit_reportado_url(@reportado)
    assert_response :success
  end

  test "should update reportado" do
    patch reportado_url(@reportado), params: { reportado: { ciudad: @reportado.ciudad, estadoP: @reportado.estadoP, estadoR: @reportado.estadoR, imei: @reportado.imei, marca: @reportado.marca, modelo: @reportado.modelo, operador: @reportado.operador, tipo: @reportado.tipo } }
    assert_redirected_to reportado_url(@reportado)
  end

  test "should destroy reportado" do
    assert_difference('Reportado.count', -1) do
      delete reportado_url(@reportado)
    end

    assert_redirected_to reportados_url
  end
end
