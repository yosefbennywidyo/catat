require 'test_helper'

class SeksiControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seksi = seksi(:one)
  end

  test "should get index" do
    get seksi_index_url
    assert_response :success
  end

  test "should get new" do
    get new_seksi_url
    assert_response :success
  end

  test "should create seksi" do
    assert_difference('Seksi.count') do
      post seksi_index_url, params: { seksi: { nama: @seksi.nama } }
    end

    assert_redirected_to seksi_url(Seksi.last)
  end

  test "should show seksi" do
    get seksi_url(@seksi)
    assert_response :success
  end

  test "should get edit" do
    get edit_seksi_url(@seksi)
    assert_response :success
  end

  test "should update seksi" do
    patch seksi_url(@seksi), params: { seksi: { nama: @seksi.nama } }
    assert_redirected_to seksi_url(@seksi)
  end

  test "should destroy seksi" do
    assert_difference('Seksi.count', -1) do
      delete seksi_url(@seksi)
    end

    assert_redirected_to seksi_index_url
  end
end
