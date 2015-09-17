require 'test_helper'

class MicrobiologistsControllerTest < ActionController::TestCase
  setup do
    @microbiologist = microbiologists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microbiologists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microbiologist" do
    assert_difference('Microbiologist.count') do
      post :create, microbiologist: { birthdate: @microbiologist.birthdate, id_number: @microbiologist.id_number, lastname: @microbiologist.lastname, name: @microbiologist.name, postGraduateUniversity: @microbiologist.postGraduateUniversity, undergraduateUniversity: @microbiologist.undergraduateUniversity }
    end

    assert_redirected_to microbiologist_path(assigns(:microbiologist))
  end

  test "should show microbiologist" do
    get :show, id: @microbiologist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microbiologist
    assert_response :success
  end

  test "should update microbiologist" do
    patch :update, id: @microbiologist, microbiologist: { birthdate: @microbiologist.birthdate, id_number: @microbiologist.id_number, lastname: @microbiologist.lastname, name: @microbiologist.name, postGraduateUniversity: @microbiologist.postGraduateUniversity, undergraduateUniversity: @microbiologist.undergraduateUniversity }
    assert_redirected_to microbiologist_path(assigns(:microbiologist))
  end

  test "should destroy microbiologist" do
    assert_difference('Microbiologist.count', -1) do
      delete :destroy, id: @microbiologist
    end

    assert_redirected_to microbiologists_path
  end
end
