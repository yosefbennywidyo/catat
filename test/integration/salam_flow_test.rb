require 'test_helper'

class SalamFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "Dapat melihat halaman Salam" do
    get "/"
    assert_select "h1", "Salam, Anda berada di Catel"
  end
end
