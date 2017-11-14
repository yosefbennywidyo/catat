class CreateStatusSuratMasukAndSuratMasukJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :status_surat_masuk, :surat_masuk do |t|
      # t.index [:status_surat_masuk_id, :surat_masuk_id]
      # t.index [:surat_masuk_id, :status_surat_masuk_id]
    end
  end
end
