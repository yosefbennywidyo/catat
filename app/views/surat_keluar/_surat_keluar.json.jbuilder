json.extract! surat_keluar, :id, :judul, :keterangan, :created_at, :updated_at
json.url surat_keluar_url(surat_keluar, format: :json)
