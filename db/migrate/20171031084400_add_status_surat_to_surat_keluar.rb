class AddStatusSuratToSuratKeluar < ActiveRecord::Migration[5.1]
  def change
    add_column :surat_keluar, :status_surat, :string
  end
end
