require 'test_helper'

class StatusAkunControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_akun = status_akun(:one)
  end

  test "should get index" do
    get status_akun_index_url
    assert_response :success
  end

  test "should get new" do
    get new_status_akun_url
    assert_response :success
  end

  test "should create status_akun" do
    assert_difference('StatusAkun.count') do
      post status_akun_index_url, params: { status_akun: { keterangan: @status_akun.keterangan } }
    end

    assert_redirected_to status_akun_url(StatusAkun.last)
  end

  test "should show status_akun" do
    get status_akun_url(@status_akun)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_akun_url(@status_akun)
    assert_response :success
  end

  test "should update status_akun" do
    patch status_akun_url(@status_akun), params: { status_akun: { keterangan: @status_akun.keterangan } }
    assert_redirected_to status_akun_url(@status_akun)
  end

  test "should destroy status_akun" do
    assert_difference('StatusAkun.count', -1) do
      delete status_akun_url(@status_akun)
    end

    assert_redirected_to status_akun_index_url
  end
end
