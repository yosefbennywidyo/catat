class StatusKepegawaianController < ApplicationController
  before_action :authorize
  before_action :set_status_kepegawaian, only: [:show, :edit, :update, :destroy]

  # GET /status_kepegawaian
  # GET /status_kepegawaian.json
  def index
    @status_kepegawaian = StatusKepegawaian.all
  end

  # GET /status_kepegawaian/1
  # GET /status_kepegawaian/1.json
  def show
  end

  # GET /status_kepegawaian/new
  def new
    @status_kepegawaian = StatusKepegawaian.new
  end

  # GET /status_kepegawaian/1/edit
  def edit
  end

  # POST /status_kepegawaian
  # POST /status_kepegawaian.json
  def create
    @status_kepegawaian = StatusKepegawaian.new(status_kepegawaian_params)

    respond_to do |format|
      if @status_kepegawaian.save
        format.html { redirect_to @status_kepegawaian, notice: 'Status kepegawaian was successfully created.' }
        format.json { render :show, status: :created, location: @status_kepegawaian }
      else
        format.html { render :new }
        format.json { render json: @status_kepegawaian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_kepegawaian/1
  # PATCH/PUT /status_kepegawaian/1.json
  def update
    respond_to do |format|
      if @status_kepegawaian.update(status_kepegawaian_params)
        format.html { redirect_to @status_kepegawaian, notice: 'Status kepegawaian was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_kepegawaian }
      else
        format.html { render :edit }
        format.json { render json: @status_kepegawaian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_kepegawaian/1
  # DELETE /status_kepegawaian/1.json
  def destroy
    @status_kepegawaian.destroy
    respond_to do |format|
      format.html { redirect_to status_kepegawaian_index_url, notice: 'Status kepegawaian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_kepegawaian
      @status_kepegawaian = StatusKepegawaian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_kepegawaian_params
      params.require(:status_kepegawaian).permit(:status_kepegawaian)
    end
end
