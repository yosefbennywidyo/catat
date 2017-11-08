class CreateStatusAkunJoinTablePengguna < ActiveRecord::Migration[5.1]
  def change
    create_join_table :status_akun, :pengguna do |t|
      # t.index [:status_akun_id, :pengguna_id]
      # t.index [:pengguna_id, :status_akun_id]
    end
  end
end
