require 'test_helper'

class JabatanControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jabatan = jabatan(:one)
  end

  test "should get index" do
    get jabatan_index_url
    assert_response :success
  end

  test "should get new" do
    get new_jabatan_url
    assert_response :success
  end

  test "should create jabatan" do
    assert_difference('Jabatan.count') do
      post jabatan_index_url, params: { jabatan: { nama: @jabatan.nama } }
    end

    assert_redirected_to jabatan_url(Jabatan.last)
  end

  test "should show jabatan" do
    get jabatan_url(@jabatan)
    assert_response :success
  end

  test "should get edit" do
    get edit_jabatan_url(@jabatan)
    assert_response :success
  end

  test "should update jabatan" do
    patch jabatan_url(@jabatan), params: { jabatan: { nama: @jabatan.nama } }
    assert_redirected_to jabatan_url(@jabatan)
  end

  test "should destroy jabatan" do
    assert_difference('Jabatan.count', -1) do
      delete jabatan_url(@jabatan)
    end

    assert_redirected_to jabatan_index_url
  end
end
