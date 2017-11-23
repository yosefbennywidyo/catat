require 'test_helper'

class AktivitasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aktivitas_index_url
    assert_response :success
  end

end
