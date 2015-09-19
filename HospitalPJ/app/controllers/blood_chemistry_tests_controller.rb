class BloodChemistryTestsController < ApplicationController
  before_action :set_blood_chemistry_test, only: [:show, :edit, :update, :destroy]

  # GET /blood_chemistry_tests
  # GET /blood_chemistry_tests.json
  def index
    @blood_chemistry_tests = BloodChemistryTest.all
  end

  # GET /blood_chemistry_tests/1
  # GET /blood_chemistry_tests/1.json
  def show
  end

  # GET /blood_chemistry_tests/new
  def new
    @blood_chemistry_test = BloodChemistryTest.new
  end

  # GET /blood_chemistry_tests/1/edit
  def edit
  end

  # POST /blood_chemistry_tests
  # POST /blood_chemistry_tests.json
  def create
    @blood_chemistry_test = BloodChemistryTest.new(blood_chemistry_test_params)

    respond_to do |format|
      if @blood_chemistry_test.save
        format.html { redirect_to @blood_chemistry_test, notice: 'Blood chemistry test was successfully created.' }
        format.json { render :show, status: :created, location: @blood_chemistry_test }
      else
        format.html { render :new }
        format.json { render json: @blood_chemistry_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_chemistry_tests/1
  # PATCH/PUT /blood_chemistry_tests/1.json
  def update
    respond_to do |format|
      if @blood_chemistry_test.update(blood_chemistry_test_params)
        format.html { redirect_to @blood_chemistry_test, notice: 'Blood chemistry test was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_chemistry_test }
      else
        format.html { render :edit }
        format.json { render json: @blood_chemistry_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_chemistry_tests/1
  # DELETE /blood_chemistry_tests/1.json
  def destroy
    @blood_chemistry_test.destroy
    respond_to do |format|
      format.html { redirect_to blood_chemistry_tests_url, notice: 'Blood chemistry test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_chemistry_test
      @blood_chemistry_test = BloodChemistryTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_chemistry_test_params
      params.require(:blood_chemistry_test).permit(:glucose, :urea, :uric_acid, :creatinine, :cholesterol, :hdl, :ldl, :triglycerides, :got, :gpt, :ggt, :alkaline_phosphatase, :calcium, :iron, :potassium, :sodium, :bilirubin, :test_date, :patient_id, :microbiologist_id, :examination_cost)
    end
end
