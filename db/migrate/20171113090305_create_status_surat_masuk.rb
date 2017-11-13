class CreateStatusSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    create_table :status_surat_masuk do |t|
      t.string :nama

      t.timestamps
    end
  end
end
