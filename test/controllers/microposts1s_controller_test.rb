require 'test_helper'

class Microposts1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microposts1 = microposts1s(:one)
  end

  test "should get index" do
    get microposts1s_url
    assert_response :success
  end

  test "should get new" do
    get new_microposts1_url
    assert_response :success
  end

  test "should create microposts1" do
    assert_difference('Microposts1.count') do
      post microposts1s_url, params: { microposts1: { content: @microposts1.content, user_id: @microposts1.user_id } }
    end

    assert_redirected_to microposts1_url(Microposts1.last)
  end

  test "should show microposts1" do
    get microposts1_url(@microposts1)
    assert_response :success
  end

  test "should get edit" do
    get edit_microposts1_url(@microposts1)
    assert_response :success
  end

  test "should update microposts1" do
    patch microposts1_url(@microposts1), params: { microposts1: { content: @microposts1.content, user_id: @microposts1.user_id } }
    assert_redirected_to microposts1_url(@microposts1)
  end

  test "should destroy microposts1" do
    assert_difference('Microposts1.count', -1) do
      delete microposts1_url(@microposts1)
    end

    assert_redirected_to microposts1s_url
  end
end
