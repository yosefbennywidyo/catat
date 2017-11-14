require 'test_helper'

class SifatSuratMasukControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sifat_surat_masuk = sifat_surat_masuk(:one)
  end

  test "should get index" do
    get sifat_surat_masuk_index_url
    assert_response :success
  end

  test "should get new" do
    get new_sifat_surat_masuk_url
    assert_response :success
  end

  test "should create sifat_surat_masuk" do
    assert_difference('SifatSuratMasuk.count') do
      post sifat_surat_masuk_index_url, params: { sifat_surat_masuk: { nama: @sifat_surat_masuk.nama } }
    end

    assert_redirected_to sifat_surat_masuk_url(SifatSuratMasuk.last)
  end

  test "should show sifat_surat_masuk" do
    get sifat_surat_masuk_url(@sifat_surat_masuk)
    assert_response :success
  end

  test "should get edit" do
    get edit_sifat_surat_masuk_url(@sifat_surat_masuk)
    assert_response :success
  end

  test "should update sifat_surat_masuk" do
    patch sifat_surat_masuk_url(@sifat_surat_masuk), params: { sifat_surat_masuk: { nama: @sifat_surat_masuk.nama } }
    assert_redirected_to sifat_surat_masuk_url(@sifat_surat_masuk)
  end

  test "should destroy sifat_surat_masuk" do
    assert_difference('SifatSuratMasuk.count', -1) do
      delete sifat_surat_masuk_url(@sifat_surat_masuk)
    end

    assert_redirected_to sifat_surat_masuk_index_url
  end
end
