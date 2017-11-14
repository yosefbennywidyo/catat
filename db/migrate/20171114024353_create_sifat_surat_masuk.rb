class CreateSifatSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    create_table :sifat_surat_masuk do |t|
      t.string :nama

      t.timestamps
    end
  end
end
