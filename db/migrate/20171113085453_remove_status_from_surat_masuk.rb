class RemoveStatusFromSuratMasuk < ActiveRecord::Migration[5.1]
  def change
    remove_column :surat_masuk, :status, :string
  end
end
