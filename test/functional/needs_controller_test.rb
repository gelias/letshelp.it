require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

class NeedsControllerTest < ActionController::TestCase

  context 'index page' do
    setup { get :index }
    should respond_with :success
    should assign_to :needs
    should render_template :index
    should_not set_the_flash
  end


end
