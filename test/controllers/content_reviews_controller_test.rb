require "test_helper"

class ContentReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get content_reviews_new_url
    assert_response :success
  end

  test "should get index" do
    get content_reviews_index_url
    assert_response :success
  end

  test "should get show" do
    get content_reviews_show_url
    assert_response :success
  end
end
