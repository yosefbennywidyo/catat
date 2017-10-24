class CreateSuratKeluar < ActiveRecord::Migration[5.1]
  def change
    create_table :surat_keluar do |t|
      t.string :judul
      t.text :keterangan

      t.timestamps
    end
  end
end
