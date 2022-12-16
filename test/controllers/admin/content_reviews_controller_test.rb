require "test_helper"

class Admin::ContentReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_content_reviews_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_content_reviews_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_content_reviews_edit_url
    assert_response :success
  end
end
