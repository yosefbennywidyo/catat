require 'test_helper'

class StatusKepegawaianControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_kepegawaian = status_kepegawaian(:one)
  end

  test "should get index" do
    get status_kepegawaian_index_url
    assert_response :success
  end

  test "should get new" do
    get new_status_kepegawaian_url
    assert_response :success
  end

  test "should create status_kepegawaian" do
    assert_difference('StatusKepegawaian.count') do
      post status_kepegawaian_index_url, params: { status_kepegawaian: { status_kepegawaian: @status_kepegawaian.status_kepegawaian } }
    end

    assert_redirected_to status_kepegawaian_url(StatusKepegawaian.last)
  end

  test "should show status_kepegawaian" do
    get status_kepegawaian_url(@status_kepegawaian)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_kepegawaian_url(@status_kepegawaian)
    assert_response :success
  end

  test "should update status_kepegawaian" do
    patch status_kepegawaian_url(@status_kepegawaian), params: { status_kepegawaian: { status_kepegawaian: @status_kepegawaian.status_kepegawaian } }
    assert_redirected_to status_kepegawaian_url(@status_kepegawaian)
  end

  test "should destroy status_kepegawaian" do
    assert_difference('StatusKepegawaian.count', -1) do
      delete status_kepegawaian_url(@status_kepegawaian)
    end

    assert_redirected_to status_kepegawaian_index_url
  end
end
