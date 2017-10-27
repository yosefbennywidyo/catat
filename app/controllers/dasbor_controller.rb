class DasborController < ApplicationController
  def index
    @jumlah_surat_keluar = SuratKeluar.count
    @jumlah_surat_masuk = SuratMasuk.count
    @jumlah_pustaka = DaftarPustaka.count
    @jumlah_pengguna = Pengguna.count
    @jumlah_status_kepegawaian = StatusKepegawaian.count
    @jumlah_jabatan = Jabatan.count
    @jumlah_seksi = Seksi.count
  end
end
