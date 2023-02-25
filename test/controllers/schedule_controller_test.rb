require "test_helper"

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get schedule_hello_url
    assert_response :success
  end
end
