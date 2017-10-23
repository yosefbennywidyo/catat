class AddDerajatPengamanToSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    add_column :surat_masuk, :derajat_pengaman, :string
  end
end
