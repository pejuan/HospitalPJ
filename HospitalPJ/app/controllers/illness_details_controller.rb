class IllnessDetailsController < ApplicationController
  before_action :set_illness_detail, only: [:show, :edit, :update, :destroy]

  # GET /illness_details
  # GET /illness_details.json
  def index
    @illness_details = IllnessDetail.all
  end

  # GET /illness_details/1
  # GET /illness_details/1.json
  def show
  end

  # GET /illness_details/new
  def new
    @illness_detail = IllnessDetail.new
  end

  # GET /illness_details/1/edit
  def edit
  end

  # POST /illness_details
  # POST /illness_details.json
  def create
    @illness_detail = IllnessDetail.new(illness_detail_params)

    respond_to do |format|
      if @illness_detail.save
        format.html { redirect_to @illness_detail, notice: 'Illness detail was successfully created.' }
        format.json { render :show, status: :created, location: @illness_detail }
      else
        format.html { render :new }
        format.json { render json: @illness_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illness_details/1
  # PATCH/PUT /illness_details/1.json
  def update
    respond_to do |format|
      if @illness_detail.update(illness_detail_params)
        format.html { redirect_to @illness_detail, notice: 'Illness detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @illness_detail }
      else
        format.html { render :edit }
        format.json { render json: @illness_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illness_details/1
  # DELETE /illness_details/1.json
  def destroy
    @illness_detail.destroy
    respond_to do |format|
      format.html { redirect_to illness_details_url, notice: 'Illness detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness_detail
      @illness_detail = IllnessDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illness_detail_params
      params.require(:illness_detail).permit(:mainSymptom, :dateSymptomAppeared, :calmsPain, :intensifiesPain, :peakHour, :patient_id, :hospitalization_id, :visit_id)
    end
end
