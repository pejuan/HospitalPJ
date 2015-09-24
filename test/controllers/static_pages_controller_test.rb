require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get patients" do
    get :patients
    assert_response :success
  end

  test "should get doctors" do
    get :doctors
    assert_response :success
  end

  test "should get microbiologists" do
    get :microbiologists
    assert_response :success
  end

  test "should get accounting" do
    get :accounting
    assert_response :success
  end

end
