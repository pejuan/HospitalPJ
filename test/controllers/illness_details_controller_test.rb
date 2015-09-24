require 'test_helper'

class IllnessDetailsControllerTest < ActionController::TestCase
  setup do
    @illness_detail = illness_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:illness_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create illness_detail" do
    assert_difference('IllnessDetail.count') do
      post :create, illness_detail: { calmsPain: @illness_detail.calmsPain, dateSymptomAppeared: @illness_detail.dateSymptomAppeared, hospitalization_id: @illness_detail.hospitalization_id, intensifiesPain: @illness_detail.intensifiesPain, mainSymptom: @illness_detail.mainSymptom, patient_id: @illness_detail.patient_id, peakHour: @illness_detail.peakHour, visit_id: @illness_detail.visit_id }
    end

    assert_redirected_to illness_detail_path(assigns(:illness_detail))
  end

  test "should show illness_detail" do
    get :show, id: @illness_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @illness_detail
    assert_response :success
  end

  test "should update illness_detail" do
    patch :update, id: @illness_detail, illness_detail: { calmsPain: @illness_detail.calmsPain, dateSymptomAppeared: @illness_detail.dateSymptomAppeared, hospitalization_id: @illness_detail.hospitalization_id, intensifiesPain: @illness_detail.intensifiesPain, mainSymptom: @illness_detail.mainSymptom, patient_id: @illness_detail.patient_id, peakHour: @illness_detail.peakHour, visit_id: @illness_detail.visit_id }
    assert_redirected_to illness_detail_path(assigns(:illness_detail))
  end

  test "should destroy illness_detail" do
    assert_difference('IllnessDetail.count', -1) do
      delete :destroy, id: @illness_detail
    end

    assert_redirected_to illness_details_path
  end
end
