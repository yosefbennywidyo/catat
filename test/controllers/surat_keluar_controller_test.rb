require 'test_helper'

class SuratKeluarControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surat_keluar = surat_keluar(:one)
  end

  test "should get index" do
    get surat_keluar_index_url
    assert_response :success
  end

  test "should get new" do
    get new_surat_keluar_url
    assert_response :success
  end

  test "should create surat_keluar" do
    assert_difference('SuratKeluar.count') do
      post surat_keluar_index_url, params: { surat_keluar: { judul: @surat_keluar.judul, keterangan: @surat_keluar.keterangan } }
    end

    assert_redirected_to surat_keluar_url(SuratKeluar.last)
  end

  test "should show surat_keluar" do
    get surat_keluar_url(@surat_keluar)
    assert_response :success
  end

  test "should get edit" do
    get edit_surat_keluar_url(@surat_keluar)
    assert_response :success
  end

  test "should update surat_keluar" do
    patch surat_keluar_url(@surat_keluar), params: { surat_keluar: { judul: @surat_keluar.judul, keterangan: @surat_keluar.keterangan } }
    assert_redirected_to surat_keluar_url(@surat_keluar)
  end

  test "should destroy surat_keluar" do
    assert_difference('SuratKeluar.count', -1) do
      delete surat_keluar_url(@surat_keluar)
    end

    assert_redirected_to surat_keluar_index_url
  end
end
