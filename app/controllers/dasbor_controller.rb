class DasborController < ApplicationController
  def index
    @jumlah_surat_keluar = SuratKeluar.count
    @jumlah_surat_masuk = SuratMasuk.count
    @jumlah_pustaka = DaftarPustaka.count
  end
end
