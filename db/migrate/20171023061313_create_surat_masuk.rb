class CreateSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    create_table :surat_masuk do |t|
      t.string :nomor_surat
      t.date :tanggal_surat
      t.string :lampiran
      t.date :diterima_tgl
      t.string :no_agenda
      t.string :status
      t.string :sifat
      t.string :derajat
      t.string :pengaman
      t.string :dari
      t.string :perihal

      t.timestamps
    end
  end
end
