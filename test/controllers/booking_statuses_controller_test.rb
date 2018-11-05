require 'test_helper'

class BookingStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get booking_statuses_new_url
    assert_response :success
  end

  test "should get create" do
    get booking_statuses_create_url
    assert_response :success
  end

  test "should get index" do
    get booking_statuses_index_url
    assert_response :success
  end

end
