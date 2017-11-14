class CreateSifatSuratMasukAndSuratMasukJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sifat_surat_masuk, :surat_masuk do |t|
      # t.index [:sifat_surat_masuk_id, :surat_masuk_id]
      # t.index [:surat_masuk_id, :sifat_surat_masuk_id]
    end
  end
end
