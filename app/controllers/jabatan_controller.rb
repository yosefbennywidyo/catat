class JabatanController < ApplicationController
  before_action :set_jabatan, only: [:show, :edit, :update, :destroy]

  # GET /jabatan
  # GET /jabatan.json
  def index
    @jabatan = Jabatan.all
  end

  # GET /jabatan/1
  # GET /jabatan/1.json
  def show
  end

  # GET /jabatan/new
  def new
    @jabatan = Jabatan.new
  end

  # GET /jabatan/1/edit
  def edit
  end

  # POST /jabatan
  # POST /jabatan.json
  def create
    @jabatan = Jabatan.new(jabatan_params)

    respond_to do |format|
      if @jabatan.save
        format.html { redirect_to @jabatan, notice: 'Jabatan was successfully created.' }
        format.json { render :show, status: :created, location: @jabatan }
      else
        format.html { render :new }
        format.json { render json: @jabatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jabatan/1
  # PATCH/PUT /jabatan/1.json
  def update
    respond_to do |format|
      if @jabatan.update(jabatan_params)
        format.html { redirect_to @jabatan, notice: 'Jabatan was successfully updated.' }
        format.json { render :show, status: :ok, location: @jabatan }
      else
        format.html { render :edit }
        format.json { render json: @jabatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jabatan/1
  # DELETE /jabatan/1.json
  def destroy
    @jabatan.destroy
    respond_to do |format|
      format.html { redirect_to jabatan_index_url, notice: 'Jabatan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jabatan
      @jabatan = Jabatan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jabatan_params
      params.require(:jabatan).permit(:nama)
    end
end
