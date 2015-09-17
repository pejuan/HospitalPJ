class MicrobiologistsController < ApplicationController
  before_action :set_microbiologist, only: [:show, :edit, :update, :destroy]

  # GET /microbiologists
  # GET /microbiologists.json
  def index
    @microbiologists = Microbiologist.all
  end

  # GET /microbiologists/1
  # GET /microbiologists/1.json
  def show
  end

  # GET /microbiologists/new
  def new
    @microbiologist = Microbiologist.new
  end

  # GET /microbiologists/1/edit
  def edit
  end

  # POST /microbiologists
  # POST /microbiologists.json
  def create
    @microbiologist = Microbiologist.new(microbiologist_params)

    respond_to do |format|
      if @microbiologist.save
        format.html { redirect_to @microbiologist, notice: 'Microbiologist was successfully created.' }
        format.json { render :show, status: :created, location: @microbiologist }
      else
        format.html { render :new }
        format.json { render json: @microbiologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microbiologists/1
  # PATCH/PUT /microbiologists/1.json
  def update
    respond_to do |format|
      if @microbiologist.update(microbiologist_params)
        format.html { redirect_to @microbiologist, notice: 'Microbiologist was successfully updated.' }
        format.json { render :show, status: :ok, location: @microbiologist }
      else
        format.html { render :edit }
        format.json { render json: @microbiologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microbiologists/1
  # DELETE /microbiologists/1.json
  def destroy
    @microbiologist.destroy
    respond_to do |format|
      format.html { redirect_to microbiologists_url, notice: 'Microbiologist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microbiologist
      @microbiologist = Microbiologist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microbiologist_params
      params.require(:microbiologist).permit(:id_number, :name, :lastname, :birthdate, :undergraduateUniversity, :postGraduateUniversity)
    end
end
