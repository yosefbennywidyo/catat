class CreateSeksiPenggunaJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :seksi, :pengguna do |t|
      # t.index [:seksi_id, :pengguna_id]
      # t.index [:pengguna_id, :seksi_id]
    end
  end
end
