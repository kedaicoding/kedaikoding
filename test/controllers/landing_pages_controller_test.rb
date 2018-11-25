require 'test_helper'

class LandingPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get landing_pages_inde_url
    assert_response :success
  end

end
