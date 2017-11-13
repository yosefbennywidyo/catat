class RemoveDerajatPengamanFromSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    remove_column :surat_masuk, :derajat_pengaman, :string
  end
end
