require 'test_helper'

class StatusSuratMasukControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_surat_masuk = status_surat_masuk(:one)
  end

  test "should get index" do
    get status_surat_masuk_index_url
    assert_response :success
  end

  test "should get new" do
    get new_status_surat_masuk_url
    assert_response :success
  end

  test "should create status_surat_masuk" do
    assert_difference('StatusSuratMasuk.count') do
      post status_surat_masuk_index_url, params: { status_surat_masuk: { nama: @status_surat_masuk.nama } }
    end

    assert_redirected_to status_surat_masuk_url(StatusSuratMasuk.last)
  end

  test "should show status_surat_masuk" do
    get status_surat_masuk_url(@status_surat_masuk)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_surat_masuk_url(@status_surat_masuk)
    assert_response :success
  end

  test "should update status_surat_masuk" do
    patch status_surat_masuk_url(@status_surat_masuk), params: { status_surat_masuk: { nama: @status_surat_masuk.nama } }
    assert_redirected_to status_surat_masuk_url(@status_surat_masuk)
  end

  test "should destroy status_surat_masuk" do
    assert_difference('StatusSuratMasuk.count', -1) do
      delete status_surat_masuk_url(@status_surat_masuk)
    end

    assert_redirected_to status_surat_masuk_index_url
  end
end
