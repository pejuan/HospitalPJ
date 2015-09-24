class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_secretary!

  # GET /bills
  # GET /bills.json
  def index
    @bills = Bill.all
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
  end

  # GET /bills/new
  def new
    @bill = Bill.new
  end

  # GET /bills/1/edit
  def edit
  end

  # POST /bills
  # POST /bills.json
  def create
    acumHosp = 0
    acumHemogram = 0
    acumChem = 0
    acumVisit = 0
    honorarioDoctor = 0
    @bill = Bill.new(bill_params)
    @hospitalizations = Hospitalization.all
    @doctors = Doctor.all
    @blood_tests = BloodTest.all
    @blood_chemistry_tests = BloodChemistryTest.all
    @hospitalizations.each do |hospital|
      if hospital.id == @bill.hospitalization_id
        if hospital.payed

        else
          acumHosp += hospital.cost
          hospital.payed = true
        end
      end
      @doctors.each do |doctor|
        if hospital.id == @bill.hospitalization_id && hospital.doctor_id == doctor.id 
          honorarioDoctor = doctor.cost
        end
      end
    end
    @blood_tests.each do |bt|
      if bt.patient_id == @bill.patient_id
        if bt.payed

        else
          acumHemogram += bt.examination_cost
          bt.payed = true
        end
        acumHemogram += bt.examination_cost
      end
    end
    @blood_chemistry_tests.each do |bc|
      if bc.patient_id == @bill.patient_id
        if bc.payed

        else
          acumChem += bc.examination_cost
          bc.payed = true
        end
        
      end
    end
   # @bill.hemogramCost = 0
   # @bill.biochemistryCost = 0
   # @bill.doctorsPayment = 0
   # @bill.hospitalizationCost = 0
   # @bill.total = 0

    @bill.hemogramCost = acumHemogram
    @bill.biochemistryCost = acumChem
    @bill.doctorsPayment = honorarioDoctor
    @bill.hospitalizationCost = acumHosp
    @bill.total = acumHosp+acumChem+acumHemogram+honorarioDoctor
    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill }
      else
        format.html { render :edit }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'Bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(:patient_id, :billDate, :hospitalizationCost, :hemogramCost, :doctorsPayment, :biochemistryCost, :visit_id, :hospitalization_id)
    end
end
