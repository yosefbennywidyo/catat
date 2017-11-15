class CreateSuratKeluarAndSeksiJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :surat_keluar, :seksi do |t|
      # t.index [:surat_keluar_id, :seksi_id]
      # t.index [:seksi_id, :surat_keluar_id]
    end
  end
end
