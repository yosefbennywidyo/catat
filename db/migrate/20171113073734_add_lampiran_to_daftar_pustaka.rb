class AddLampiranToDaftarPustaka < ActiveRecord::Migration[5.1]
  def change
    add_column :daftar_pustaka, :lampiran, :string
  end
end
