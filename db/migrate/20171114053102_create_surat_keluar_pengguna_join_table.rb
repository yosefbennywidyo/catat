class CreateSuratKeluarPenggunaJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pengguna, :surat_keluar do |t|
      # t.index [:pengguna_id, :surat_keluar_id]
      # t.index [:surat_keluar_id, :pengguna_id]
    end
  end
end
