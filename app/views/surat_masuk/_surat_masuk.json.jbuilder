json.extract! surat_masuk, :id, :nomor_surat, :tanggal_surat, :lampiran, :diterima_tgl, :no_agenda, :status, :sifat, :derajat, :pengaman, :dari, :perihal, :created_at, :updated_at
json.url surat_masuk_url(surat_masuk, format: :json)
