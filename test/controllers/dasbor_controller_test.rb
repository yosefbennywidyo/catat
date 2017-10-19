require 'test_helper'

class DasborControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dasbor_index_url
    assert_response :success
  end

end
