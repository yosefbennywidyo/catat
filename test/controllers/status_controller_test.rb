require 'test_helper'

class StatusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status = status(:one)
  end

  test "should get index" do
    get status_index_url
    assert_response :success
  end

  test "should get new" do
    get new_status_url
    assert_response :success
  end

  test "should create status" do
    assert_difference('Status.count') do
      post status_index_url, params: { status: { keterangan: @status.keterangan, statuses_id: @status.statuses_id, statuses_type: @status.statuses_type } }
    end

    assert_redirected_to status_url(Status.last)
  end

  test "should show status" do
    get status_url(@status)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_url(@status)
    assert_response :success
  end

  test "should update status" do
    patch status_url(@status), params: { status: { keterangan: @status.keterangan, statuses_id: @status.statuses_id, statuses_type: @status.statuses_type } }
    assert_redirected_to status_url(@status)
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete status_url(@status)
    end

    assert_redirected_to status_index_url
  end
end
