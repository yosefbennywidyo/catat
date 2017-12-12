require 'test_helper'

class DisposisiControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disposisi = disposisi(:one)
  end

  test "should get index" do
    get disposisi_index_url
    assert_response :success
  end

  test "should get new" do
    get new_disposisi_url
    assert_response :success
  end

  test "should create disposisi" do
    assert_difference('Disposisi.count') do
      post disposisi_index_url, params: { disposisi: {  } }
    end

    assert_redirected_to disposisi_url(Disposisi.last)
  end

  test "should show disposisi" do
    get disposisi_url(@disposisi)
    assert_response :success
  end

  test "should get edit" do
    get edit_disposisi_url(@disposisi)
    assert_response :success
  end

  test "should update disposisi" do
    patch disposisi_url(@disposisi), params: { disposisi: {  } }
    assert_redirected_to disposisi_url(@disposisi)
  end

  test "should destroy disposisi" do
    assert_difference('Disposisi.count', -1) do
      delete disposisi_url(@disposisi)
    end

    assert_redirected_to disposisi_index_url
  end
end
