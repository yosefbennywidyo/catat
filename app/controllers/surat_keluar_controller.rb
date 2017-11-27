class SuratKeluarController < ApplicationController
  before_action :authorize
  before_action :set_surat_keluar, only: [:show, :edit, :update, :destroy]
  after_update [update_status]

  # GET /surat_keluar
  # GET /surat_keluar.json
  def index
    cek_jabatan_pengguna
    cek_seksi_pengguna
    @surat_keluar = SuratKeluar.all
    Pengguna.includes(:surat_keluar).find(4).surat_keluar
    # Nil - Pengonsep
    @surat_keluar_tata_usaha_awal = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: nil)
    @surat_keluar_urusan_agama_katolik_awal = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: nil)
    @surat_keluar_urusan_agama_kristen_awal = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: nil)
    @surat_keluar_pendidikan_agama_katolik_awal = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: nil)
    @surat_keluar_pendidikan_agama_kristen_awal = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: nil)
    @surat_keluar_pendidikan_agama_islam_awal = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: nil)
    @surat_keluar_urusan_agama_islam_awal = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: nil)
    @surat_keluar_haji_dan_umrah_awal = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: nil)
    @surat_keluar_kecamatan_katikutana_awal = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: nil)
    
    # Konsep - Kasie/Gara/KTU
    @surat_keluar_tata_usaha_konsep = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_urusan_agama_katolik_konsep = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_urusan_agama_kristen_konsep = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_pendidikan_agama_katolik_konsep = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_pendidikan_agama_kristen_konsep = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_pendidikan_agama_islam_konsep = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_urusan_agama_islam_konsep = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_haji_dan_umrah_konsep = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Konsep')
    @surat_keluar_kecamatan_katikutana_konsep = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Konsep')
    
    # Revisi 1 - Pengonsep
    @surat_keluar_tata_usaha_revisi_1 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_urusan_agama_katolik_revisi_1 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_urusan_agama_kristen_revisi_1 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_pendidikan_agama_katolik_revisi_1 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_pendidikan_agama_kristen_revisi_1 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_pendidikan_agama_islam_revisi_1 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_urusan_agama_islam_revisi_1 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_haji_dan_umrah_revisi_1 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_kecamatan_katikutana_revisi_1 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Revisi 1')
    
    # Koreksi 1 - Kasie/Gara/KTU
    @surat_keluar_tata_usaha_koreksi_1 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_urusan_agama_katolik_koreksi_1 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_urusan_agama_kristen_koreksi_1 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_pendidikan_agama_katolik_koreksi_1 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_pendidikan_agama_kristen_koreksi_1 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_pendidikan_agama_islam_koreksi_1 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_urusan_agama_islam_koreksi_1 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_haji_dan_umrah_koreksi_1 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_kecamatan_katikutana_koreksi_1 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Koreksi 1')
    
    # Revisi 2 - Pengonsep
    @surat_keluar_tata_usaha_revisi_2 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_urusan_agama_katolik_revisi_2 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_urusan_agama_kristen_revisi_2 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_pendidikan_agama_katolik_revisi_2 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_pendidikan_agama_kristen_revisi_2 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_pendidikan_agama_islam_revisi_2 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_urusan_agama_islam_revisi_2 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_haji_dan_umrah_revisi_2 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_kecamatan_katikutana_revisi_2 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Revisi 2')
    
    # Koreksi 2 - Kasie/Gara = KTU & TU = Kepala
    @surat_keluar_tata_usaha_koreksi_2 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_urusan_agama_katolik_koreksi_2 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_urusan_agama_kristen_koreksi_2 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_pendidikan_agama_katolik_koreksi_2 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_pendidikan_agama_kristen_koreksi_2 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_pendidikan_agama_islam_koreksi_2 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_urusan_agama_islam_koreksi_2 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_haji_dan_umrah_koreksi_2 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_kecamatan_katikutana_koreksi_2 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Koreksi 2')
    
    # Revisi 3 - Pengonsep
    @surat_keluar_tata_usaha_revisi_3 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_urusan_agama_katolik_revisi_3 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_urusan_agama_kristen_revisi_3 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_pendidikan_agama_katolik_revisi_3 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_pendidikan_agama_kristen_revisi_3 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_pendidikan_agama_islam_revisi_3 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_urusan_agama_islam_revisi_3 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_haji_dan_umrah_revisi_3 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_kecamatan_katikutana_revisi_3 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Revisi 3')
    
    # Koreksi 3 - Kasie/Gara = KTU & TU = Kepala
    @surat_keluar_tata_usaha_koreksi_3 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_urusan_agama_katolik_koreksi_3 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_urusan_agama_kristen_koreksi_3 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_pendidikan_agama_katolik_koreksi_3 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_pendidikan_agama_kristen_koreksi_3 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_pendidikan_agama_islam_koreksi_3 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_urusan_agama_islam_koreksi_3 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_haji_dan_umrah_koreksi_3 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_kecamatan_katikutana_koreksi_3 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Koreksi 3')
    
    # Revisi 4  = Pengonsep - TU Final
    @surat_keluar_tata_usaha_revisi_4 = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_urusan_agama_katolik_revisi_4 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_urusan_agama_kristen_revisi_4 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_pendidikan_agama_katolik_revisi_4 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_pendidikan_agama_kristen_revisi_4 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_pendidikan_agama_islam_revisi_4 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_urusan_agama_islam_revisi_4 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_haji_dan_umrah_revisi_4 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_kecamatan_katikutana_revisi_4 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Revisi 4')
    
    # Koreksi 4 - Kasie/Gara = Kepala
    @surat_keluar_urusan_agama_katolik_koreksi_4 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_urusan_agama_kristen_koreksi_4 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_pendidikan_agama_katolik_koreksi_4 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_pendidikan_agama_kristen_koreksi_4 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_pendidikan_agama_islam_koreksi_4 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_urusan_agama_islam_koreksi_4 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_haji_dan_umrah_koreksi_4 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_kecamatan_katikutana_koreksi_4 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Koreksi 4')
    
    # Revisi 5 - Pengonsep
    @surat_keluar_urusan_agama_katolik_revisi_5 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_urusan_agama_kristen_revisi_5 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_pendidikan_agama_katolik_revisi_5 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_pendidikan_agama_kristen_revisi_5 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_pendidikan_agama_islam_revisi_5 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_urusan_agama_islam_revisi_5 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_haji_dan_umrah_revisi_5 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Revisi 5')
    @surat_keluar_kecamatan_katikutana_revisi_5 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Revisi 5')
    
    # Koreksi 5 - Kasie/Gara = Kepala
    @surat_keluar_urusan_agama_katolik_koreksi_5 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_urusan_agama_kristen_koreksi_5 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_pendidikan_agama_katolik_koreksi_5 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_pendidikan_agama_kristen_koreksi_5 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_pendidikan_agama_islam_koreksi_5 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_urusan_agama_islam_koreksi_5 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_haji_dan_umrah_koreksi_5 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_kecamatan_katikutana_koreksi_5 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Koreksi 5')
    
    # Revisi 6 - Pengonsep - Kasie/Gara Final
    @surat_keluar_urusan_agama_katolik_revisi_6 = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_urusan_agama_kristen_revisi_6 = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_pendidikan_agama_katolik_revisi_6 = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_pendidikan_agama_kristen_revisi_6 = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_pendidikan_agama_islam_revisi_6 = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_urusan_agama_islam_revisi_6 = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_haji_dan_umrah_revisi_6 = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Revisi 6')
    @surat_keluar_kecamatan_katikutana_revisi_6 = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Revisi 6')
    
    # Final - Pengonsep
    @surat_keluar_tata_usaha_final = Seksi.includes(:surat_keluar).find(1).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_urusan_agama_katolik_final = Seksi.includes(:surat_keluar).find(2).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_urusan_agama_kristen_final = Seksi.includes(:surat_keluar).find(3).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_pendidikan_agama_katolik_final = Seksi.includes(:surat_keluar).find(4).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_pendidikan_agama_kristen_final = Seksi.includes(:surat_keluar).find(5).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_pendidikan_agama_islam_final = Seksi.includes(:surat_keluar).find(6).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_urusan_agama_islam_final = Seksi.includes(:surat_keluar).find(7).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_haji_dan_umrah_final = Seksi.includes(:surat_keluar).find(8).surat_keluar.where(status_surat: 'Final')
    @surat_keluar_kecamatan_katikutana_final = Seksi.includes(:surat_keluar).find(9).surat_keluar.where(status_surat: 'Final')



    @surat_keluar_koreksi_1 = @surat_keluar.where(status_surat: 'Koreksi 1')
    @surat_keluar_revisi_1 = @surat_keluar.where(status_surat: 'Revisi 1')
    @surat_keluar_koreksi_2 = @surat_keluar.where(status_surat: 'Koreksi 2')
    @surat_keluar_revisi_2 = @surat_keluar.where(status_surat: 'Revisi 2')
    @surat_keluar_koreksi_3 = @surat_keluar.where(status_surat: 'Koreksi 3')
    @surat_keluar_revisi_3 = @surat_keluar.where(status_surat: 'Revisi 3')
    @surat_keluar_koreksi_4 = @surat_keluar.where(status_surat: 'Koreksi 4')
    @surat_keluar_revisi_4 = @surat_keluar.where(status_surat: 'Revisi 4')
    @surat_keluar_koreksi_5 = @surat_keluar.where(status_surat: 'Koreksi 5')
    @surat_keluar_fix = @surat_keluar.where(status_surat: 'Fix')
  end

  # GET /surat_keluar/1
  # GET /surat_keluar/1.json
  def show
    cek_jabatan_pengguna
    cek_seksi_pengguna
    cek_status_surat_keluar
    set_surat_keluar
    cek_seksi_surat_keluar
  end

  # GET /surat_keluar/new
  def new
    cek_jabatan_pengguna
    @surat_keluar = current_user.surat_keluar.new
    @seksi_pengguna_id = Pengguna.includes(:seksi).find(current_user.id).seksi.collect(&:id)
    @seksi_pengguna_nama = current_user.id
    #Pengguna.includes(:seksi).find(current_user.id).seksi.collect(&:id)
    #Pengguna.includes(:seksi).find('pengguna.id' => current_user.id).seksi.collect(&:id)
    #Pengguna.joins(:seksi).where('pengguna.id' => current_user.id).collect(&:id)
  end

  # GET /surat_keluar/1/edit
  def edit
    cek_jabatan_pengguna
  end

  # POST /surat_keluar
  # POST /surat_keluar.json
  def create
    cek_jabatan_pengguna
    @surat_keluar = current_user.surat_keluar.new(surat_keluar_params)

    respond_to do |format|
      if @surat_keluar.save
        format.html { redirect_to @surat_keluar, notice: 'Surat keluar was successfully created.' }
        format.json { render :show, status: :created, location: @surat_keluar }
      else
        format.html { render :new }
        format.json { render json: @surat_keluar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surat_keluar/1
  # PATCH/PUT /surat_keluar/1.json
  def update
    respond_to do |format|
      if @surat_keluar.update(surat_keluar_params)
        format.html { redirect_to @surat_keluar, notice: 'Surat keluar was successfully updated.' }
        format.json { render :show, status: :ok, location: @surat_keluar }
      else
        format.html { render :edit }
        format.json { render json: @surat_keluar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surat_keluar/1
  # DELETE /surat_keluar/1.json
  def destroy
    @surat_keluar.destroy
    respond_to do |format|
      format.html { redirect_to surat_keluar_index_url, notice: 'Surat keluar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def cek_status_surat_keluar
      @status_surat_keluar = @surat_keluar.status_surat
    end
    
    def update_status
      Status.create(keterangan: "Status baru")
    end
    
    def cek_seksi_pengguna
      @seksi_pengguna = Pengguna.includes(:seksi).find(current_user.id).seksi.collect(&:nama)
    end
    
    def cek_seksi_surat_keluar
      @seksi_surat_keluar = SuratKeluar.includes(:seksi).find(params[:id]).seksi.collect(&:nama)
    end
    
    def cek_seksi_pengguna_id
      @seksi_pengguna_id = Pengguna.includes(:seksi).find(current_user.id).seksi.collect(&:id)
    end
    
    def cek_jabatan_pengguna
      @jabatan_pengguna = Pengguna.includes(:jabatan).find(current_user.id).jabatan.collect(&:nama)
    end
    def set_surat_keluar
      @surat_keluar = SuratKeluar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surat_keluar_params
      params.require(:surat_keluar).permit(:judul, :keterangan, :status_surat, :lampiran_dokumen, pengguna_ids:[], jabatan_ids:[], seksi_ids:[], status_ids:[])
    end
end
