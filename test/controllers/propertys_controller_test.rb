require 'test_helper'

class PropertysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get propertys_new_url
    assert_response :success
  end

  test "should get index" do
    get propertys_index_url
    assert_response :success
  end

  test "should get show" do
    get propertys_show_url
    assert_response :success
  end

  test "should get edit" do
    get propertys_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get propertys_confirm_url
    assert_response :success
  end

end
