require "test_helper"

class Admin::ContentCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get admin_content_comments_destroy_url
    assert_response :success
  end
end
