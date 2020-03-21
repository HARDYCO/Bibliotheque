require 'test_helper'

class LivresControllerTest < ActionDispatch::IntegrationTest
  test "should get listelivre" do
    get livres_listelivre_url
    assert_response :success
  end

end
