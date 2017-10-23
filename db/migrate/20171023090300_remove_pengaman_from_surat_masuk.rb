class RemovePengamanFromSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    remove_column :surat_masuk, :pengaman, :string
  end
end
