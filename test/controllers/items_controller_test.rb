require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get current_order" do
    get items_current_order_url
    assert_response :success
  end

end
