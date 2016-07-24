require 'test_helper'

class IgetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get iget_index_url
    assert_response :success
  end

end
