require 'test_helper'

class HospitalizationsControllerTest < ActionController::TestCase
  setup do
    @hospitalization = hospitalizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospitalizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospitalization" do
    assert_difference('Hospitalization.count') do
      post :create, hospitalization: { cost: @hospitalization.cost, daysSpent: @hospitalization.daysSpent, doctor_id: @hospitalization.doctor_id, entryDate: @hospitalization.entryDate, roomNumber: @hospitalization.roomNumber }
    end

    assert_redirected_to hospitalization_path(assigns(:hospitalization))
  end

  test "should show hospitalization" do
    get :show, id: @hospitalization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospitalization
    assert_response :success
  end

  test "should update hospitalization" do
    patch :update, id: @hospitalization, hospitalization: { cost: @hospitalization.cost, daysSpent: @hospitalization.daysSpent, doctor_id: @hospitalization.doctor_id, entryDate: @hospitalization.entryDate, roomNumber: @hospitalization.roomNumber }
    assert_redirected_to hospitalization_path(assigns(:hospitalization))
  end

  test "should destroy hospitalization" do
    assert_difference('Hospitalization.count', -1) do
      delete :destroy, id: @hospitalization
    end

    assert_redirected_to hospitalizations_path
  end
end
