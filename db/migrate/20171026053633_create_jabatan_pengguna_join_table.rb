class CreateJabatanPenggunaJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :jabatan, :pengguna do |t|
      # t.index [:jabatan_id, :pengguna_id]
      # t.index [:pengguna_id, :jabatan_id]
    end
  end
end
