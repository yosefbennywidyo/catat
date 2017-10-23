class RemoveDerajatFromSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    remove_column :surat_masuk, :derajat, :string
  end
end
