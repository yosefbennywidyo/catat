require 'test_helper'

class PenggunaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pengguna = pengguna(:one)
  end

  test "should get index" do
    get pengguna_index_url
    assert_response :success
  end

  test "should get new" do
    get new_pengguna_url
    assert_response :success
  end

  test "should create pengguna" do
    assert_difference('Pengguna.count') do
      post pengguna_index_url, params: { pengguna: { nama: @pengguna.nama } }
    end

    assert_redirected_to pengguna_url(Pengguna.last)
  end

  test "should show pengguna" do
    get pengguna_url(@pengguna)
    assert_response :success
  end

  test "should get edit" do
    get edit_pengguna_url(@pengguna)
    assert_response :success
  end

  test "should update pengguna" do
    patch pengguna_url(@pengguna), params: { pengguna: { nama: @pengguna.nama } }
    assert_redirected_to pengguna_url(@pengguna)
  end

  test "should destroy pengguna" do
    assert_difference('Pengguna.count', -1) do
      delete pengguna_url(@pengguna)
    end

    assert_redirected_to pengguna_index_url
  end
end
