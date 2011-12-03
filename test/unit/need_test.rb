require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

class NeedTest < ActiveSupport::TestCase
 #should have_one :organization

  should validate_presence_of :description
  should validate_presence_of :title
  should validate_presence_of :status

  should "Load a Need and change its status" do
    need = needs(:clothes)

    need.status = "done"

    assert need.save
    
  end
end
