require 'test_helper'

class SalamFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "Dapat melihat halaman Salam" do
    get "/"
    assert_select "h1", "Salam"
    assert_select "p", "Catat merupakan aplikasi yang berfungsi untuk mencatat surat masuk dan surat keluar, serta konsep surat."
  end
end
