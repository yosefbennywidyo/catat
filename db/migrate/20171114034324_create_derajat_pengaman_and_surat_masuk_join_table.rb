class CreateDerajatPengamanAndSuratMasukJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :derajat_pengaman, :surat_masuk do |t|
      # t.index [:derajat_pengaman_id, :surat_masuk_id]
      # t.index [:surat_masuk_id, :derajat_pengaman_id]
    end
  end
end
