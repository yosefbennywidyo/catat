require 'test_helper'

class DerajatPengamanControllerTest < ActionDispatch::IntegrationTest
  setup do
    @derajat_pengaman = derajat_pengaman(:one)
  end

  test "should get index" do
    get derajat_pengaman_index_url
    assert_response :success
  end

  test "should get new" do
    get new_derajat_pengaman_url
    assert_response :success
  end

  test "should create derajat_pengaman" do
    assert_difference('DerajatPengaman.count') do
      post derajat_pengaman_index_url, params: { derajat_pengaman: { nama: @derajat_pengaman.nama } }
    end

    assert_redirected_to derajat_pengaman_url(DerajatPengaman.last)
  end

  test "should show derajat_pengaman" do
    get derajat_pengaman_url(@derajat_pengaman)
    assert_response :success
  end

  test "should get edit" do
    get edit_derajat_pengaman_url(@derajat_pengaman)
    assert_response :success
  end

  test "should update derajat_pengaman" do
    patch derajat_pengaman_url(@derajat_pengaman), params: { derajat_pengaman: { nama: @derajat_pengaman.nama } }
    assert_redirected_to derajat_pengaman_url(@derajat_pengaman)
  end

  test "should destroy derajat_pengaman" do
    assert_difference('DerajatPengaman.count', -1) do
      delete derajat_pengaman_url(@derajat_pengaman)
    end

    assert_redirected_to derajat_pengaman_index_url
  end
end
