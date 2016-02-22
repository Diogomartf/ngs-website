require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
  	@base_title = "NGS malhas"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | " + @base_title
  end

end
