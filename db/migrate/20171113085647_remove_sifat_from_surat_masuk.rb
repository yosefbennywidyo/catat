class RemoveSifatFromSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    remove_column :surat_masuk, :sifat, :string
  end
end
