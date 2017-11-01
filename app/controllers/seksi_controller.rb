class SeksiController < ApplicationController
  before_action :authorize
  before_action :set_seksi, only: [:show, :edit, :update, :destroy]

  # GET /seksi
  # GET /seksi.json
  def index
    @seksi = Seksi.all
  end

  # GET /seksi/1
  # GET /seksi/1.json
  def show
  end

  # GET /seksi/new
  def new
    @seksi = Seksi.new
  end

  # GET /seksi/1/edit
  def edit
  end

  # POST /seksi
  # POST /seksi.json
  def create
    @seksi = Seksi.new(seksi_params)

    respond_to do |format|
      if @seksi.save
        format.html { redirect_to @seksi, notice: 'Seksi was successfully created.' }
        format.json { render :show, status: :created, location: @seksi }
      else
        format.html { render :new }
        format.json { render json: @seksi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seksi/1
  # PATCH/PUT /seksi/1.json
  def update
    respond_to do |format|
      if @seksi.update(seksi_params)
        format.html { redirect_to @seksi, notice: 'Seksi was successfully updated.' }
        format.json { render :show, status: :ok, location: @seksi }
      else
        format.html { render :edit }
        format.json { render json: @seksi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seksi/1
  # DELETE /seksi/1.json
  def destroy
    @seksi.destroy
    respond_to do |format|
      format.html { redirect_to seksi_index_url, notice: 'Seksi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seksi
      @seksi = Seksi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seksi_params
      params.require(:seksi).permit(:nama)
    end
end
