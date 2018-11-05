require 'test_helper'

class QasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qas_index_url
    assert_response :success
  end

  test "should get show" do
    get qas_show_url
    assert_response :success
  end

  test "should get new" do
    get qas_new_url
    assert_response :success
  end

  test "should get create" do
    get qas_create_url
    assert_response :success
  end

  test "should get edit" do
    get qas_edit_url
    assert_response :success
  end

  test "should get update" do
    get qas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get qas_destroy_url
    assert_response :success
  end

end
