require 'test_helper'

class SuratMasukControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surat_masuk = surat_masuk(:one)
  end

  test "should get index" do
    get surat_masuk_index_url
    assert_response :success
  end

  test "should get new" do
    get new_surat_masuk_url
    assert_response :success
  end

  test "should create surat_masuk" do
    assert_difference('SuratMasuk.count') do
      post surat_masuk_index_url, params: { surat_masuk: { dari: @surat_masuk.dari, derajat_pengaman: @surat_masuk.derajat_pengaman, diterima_tgl: @surat_masuk.diterima_tgl, lampiran: @surat_masuk.lampiran, no_agenda: @surat_masuk.no_agenda, nomor_surat: @surat_masuk.nomor_surat, perihal: @surat_masuk.perihal, sifat: @surat_masuk.sifat, status: @surat_masuk.status, tanggal_surat: @surat_masuk.tanggal_surat } }
    end

    assert_redirected_to surat_masuk_url(SuratMasuk.last)
  end

  test "should show surat_masuk" do
    get surat_masuk_url(@surat_masuk)
    assert_response :success
  end

  test "should get edit" do
    get edit_surat_masuk_url(@surat_masuk)
    assert_response :success
  end

  test "should update surat_masuk" do
    patch surat_masuk_url(@surat_masuk), params: { surat_masuk: { dari: @surat_masuk.dari, derajat_pengaman: @surat_masuk.derajat_pengaman, diterima_tgl: @surat_masuk.diterima_tgl, lampiran: @surat_masuk.lampiran, no_agenda: @surat_masuk.no_agenda, nomor_surat: @surat_masuk.nomor_surat, perihal: @surat_masuk.perihal, sifat: @surat_masuk.sifat, status: @surat_masuk.status, tanggal_surat: @surat_masuk.tanggal_surat } }
    assert_redirected_to surat_masuk_url(@surat_masuk)
  end

  test "should destroy surat_masuk" do
    assert_difference('SuratMasuk.count', -1) do
      delete surat_masuk_url(@surat_masuk)
    end

    assert_redirected_to surat_masuk_index_url
  end
end
