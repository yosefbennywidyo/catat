class KomentarController < ApplicationController
before_action :find_commentable

    def new
      @komentar = Komentar.new
    end

    def create
      @komentar = @commentable.komentar.new komentar_params

      if @komentar.save
        redirect_back fallback_location: root_path, notice: 'Komentar Anda berhasil dibuat!'
      else
        redirect_back fallback_location: root_path, notice: "Komentar Anda tidak berhasil dibuat!"
      end
    end

    private

    def komentar_params
      params.require(:komentar).permit(:isi)
    end

    def find_commentable
      @commentable = Komentar.find_by_id(params[:komentar_id]) if params[:komentar_id]
      @commentable = SuratKeluar.find_by_id(params[:surat_keluar_id]) if params[:surat_keluar_id]
    end
end
