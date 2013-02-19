require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get clientes" do
    get :clientes
    assert_response :success
  end

  test "should get produtos" do
    get :produtos
    assert_response :success
  end

end
