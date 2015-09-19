require 'test_helper'

class BloodChemistryTestsControllerTest < ActionController::TestCase
  setup do
    @blood_chemistry_test = blood_chemistry_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_chemistry_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_chemistry_test" do
    assert_difference('BloodChemistryTest.count') do
      post :create, blood_chemistry_test: { alkaline_phosphatase: @blood_chemistry_test.alkaline_phosphatase, bilirubin: @blood_chemistry_test.bilirubin, calcium: @blood_chemistry_test.calcium, cholesterol: @blood_chemistry_test.cholesterol, creatinine: @blood_chemistry_test.creatinine, examination_cost: @blood_chemistry_test.examination_cost, ggt: @blood_chemistry_test.ggt, glucose: @blood_chemistry_test.glucose, got: @blood_chemistry_test.got, gpt: @blood_chemistry_test.gpt, hdl: @blood_chemistry_test.hdl, iron: @blood_chemistry_test.iron, ldl: @blood_chemistry_test.ldl, microbiologist_id: @blood_chemistry_test.microbiologist_id, patient_id: @blood_chemistry_test.patient_id, potassium: @blood_chemistry_test.potassium, sodium: @blood_chemistry_test.sodium, test_date: @blood_chemistry_test.test_date, triglycerides: @blood_chemistry_test.triglycerides, urea: @blood_chemistry_test.urea, uric_acid: @blood_chemistry_test.uric_acid }
    end

    assert_redirected_to blood_chemistry_test_path(assigns(:blood_chemistry_test))
  end

  test "should show blood_chemistry_test" do
    get :show, id: @blood_chemistry_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood_chemistry_test
    assert_response :success
  end

  test "should update blood_chemistry_test" do
    patch :update, id: @blood_chemistry_test, blood_chemistry_test: { alkaline_phosphatase: @blood_chemistry_test.alkaline_phosphatase, bilirubin: @blood_chemistry_test.bilirubin, calcium: @blood_chemistry_test.calcium, cholesterol: @blood_chemistry_test.cholesterol, creatinine: @blood_chemistry_test.creatinine, examination_cost: @blood_chemistry_test.examination_cost, ggt: @blood_chemistry_test.ggt, glucose: @blood_chemistry_test.glucose, got: @blood_chemistry_test.got, gpt: @blood_chemistry_test.gpt, hdl: @blood_chemistry_test.hdl, iron: @blood_chemistry_test.iron, ldl: @blood_chemistry_test.ldl, microbiologist_id: @blood_chemistry_test.microbiologist_id, patient_id: @blood_chemistry_test.patient_id, potassium: @blood_chemistry_test.potassium, sodium: @blood_chemistry_test.sodium, test_date: @blood_chemistry_test.test_date, triglycerides: @blood_chemistry_test.triglycerides, urea: @blood_chemistry_test.urea, uric_acid: @blood_chemistry_test.uric_acid }
    assert_redirected_to blood_chemistry_test_path(assigns(:blood_chemistry_test))
  end

  test "should destroy blood_chemistry_test" do
    assert_difference('BloodChemistryTest.count', -1) do
      delete :destroy, id: @blood_chemistry_test
    end

    assert_redirected_to blood_chemistry_tests_path
  end
end
