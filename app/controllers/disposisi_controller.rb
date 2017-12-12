class DisposisiController < ApplicationController
  before_action :set_disposisi, only: [:show, :edit, :update, :destroy]

  # GET /disposisi
  # GET /disposisi.json
  def index
    @disposisi = Disposisi.all
  end

  # GET /disposisi/1
  # GET /disposisi/1.json
  def show
  end

  # GET /disposisi/new
  def new
    @disposisi = Disposisi.new
  end

  # GET /disposisi/1/edit
  def edit
  end

  # POST /disposisi
  # POST /disposisi.json
  def create
    @disposisi = Disposisi.new(disposisi_params)

    respond_to do |format|
      if @disposisi.save
        format.html { redirect_to @disposisi, notice: 'Disposisi was successfully created.' }
        format.json { render :show, status: :created, location: @disposisi }
      else
        format.html { render :new }
        format.json { render json: @disposisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disposisi/1
  # PATCH/PUT /disposisi/1.json
  def update
    respond_to do |format|
      if @disposisi.update(disposisi_params)
        format.html { redirect_to @disposisi, notice: 'Disposisi was successfully updated.' }
        format.json { render :show, status: :ok, location: @disposisi }
      else
        format.html { render :edit }
        format.json { render json: @disposisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disposisi/1
  # DELETE /disposisi/1.json
  def destroy
    @disposisi.destroy
    respond_to do |format|
      format.html { redirect_to disposisi_index_url, notice: 'Disposisi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disposisi
      @disposisi = Disposisi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disposisi_params
      params.fetch(:disposisi, {})
    end
end
