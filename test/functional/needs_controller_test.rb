require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

class NeedsControllerTest < ActionController::TestCase

  should "be able to see the needs list" do
    get :index
    assert_response :success
  end

end
