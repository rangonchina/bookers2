require "test_helper"

class RailsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get rails_destroy_url
    assert_response :success
  end

  test "should get controller" do
    get rails_controller_url
    assert_response :success
  end

  test "should get lists" do
    get rails_lists_url
    assert_response :success
  end

  test "should get books" do
    get rails_books_url
    assert_response :success
  end

  test "should get index" do
    get rails_index_url
    assert_response :success
  end

  test "should get show" do
    get rails_show_url
    assert_response :success
  end

  test "should get edit" do
    get rails_edit_url
    assert_response :success
  end
end
