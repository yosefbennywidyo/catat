require 'test_helper'

class DaftarPustakaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daftar_pustaka = daftar_pustaka(:one)
  end

  test "should get index" do
    get daftar_pustaka_index_url
    assert_response :success
  end

  test "should get new" do
    get new_daftar_pustaka_url
    assert_response :success
  end

  test "should create daftar_pustaka" do
    assert_difference('DaftarPustaka.count') do
      post daftar_pustaka_index_url, params: { daftar_pustaka: { judul: @daftar_pustaka.judul, keterangan: @daftar_pustaka.keterangan } }
    end

    assert_redirected_to daftar_pustaka_url(DaftarPustaka.last)
  end

  test "should show daftar_pustaka" do
    get daftar_pustaka_url(@daftar_pustaka)
    assert_response :success
  end

  test "should get edit" do
    get edit_daftar_pustaka_url(@daftar_pustaka)
    assert_response :success
  end

  test "should update daftar_pustaka" do
    patch daftar_pustaka_url(@daftar_pustaka), params: { daftar_pustaka: { judul: @daftar_pustaka.judul, keterangan: @daftar_pustaka.keterangan } }
    assert_redirected_to daftar_pustaka_url(@daftar_pustaka)
  end

  test "should destroy daftar_pustaka" do
    assert_difference('DaftarPustaka.count', -1) do
      delete daftar_pustaka_url(@daftar_pustaka)
    end

    assert_redirected_to daftar_pustaka_index_url
  end
end
