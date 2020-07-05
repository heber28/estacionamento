require 'test_helper'

class MensalistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mensalistum = mensalista(:one)
  end

  test "should get index" do
    get mensalista_url
    assert_response :success
  end

  test "should get new" do
    get new_mensalistum_url
    assert_response :success
  end

  test "should create mensalistum" do
    assert_difference('Mensalistum.count') do
      post mensalista_url, params: { mensalistum: { nome: @mensalistum.nome, telefone: @mensalistum.telefone } }
    end

    assert_redirected_to mensalistum_url(Mensalistum.last)
  end

  test "should show mensalistum" do
    get mensalistum_url(@mensalistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_mensalistum_url(@mensalistum)
    assert_response :success
  end

  test "should update mensalistum" do
    patch mensalistum_url(@mensalistum), params: { mensalistum: { nome: @mensalistum.nome, telefone: @mensalistum.telefone } }
    assert_redirected_to mensalistum_url(@mensalistum)
  end

  test "should destroy mensalistum" do
    assert_difference('Mensalistum.count', -1) do
      delete mensalistum_url(@mensalistum)
    end

    assert_redirected_to mensalista_url
  end
end
