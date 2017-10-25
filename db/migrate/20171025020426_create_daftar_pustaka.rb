class CreateDaftarPustaka < ActiveRecord::Migration[5.1]
  def change
    create_table :daftar_pustaka do |t|
      t.string :judul
      t.text :keterangan

      t.timestamps
    end
  end
end
