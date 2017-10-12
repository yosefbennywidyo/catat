require 'test_helper'

class SalamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salam_index_url
    assert_response :success
  end

end
