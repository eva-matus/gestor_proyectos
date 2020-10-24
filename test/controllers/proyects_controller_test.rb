require 'test_helper'

class ProyectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proyects_index_url
    assert_response :success
  end

end
