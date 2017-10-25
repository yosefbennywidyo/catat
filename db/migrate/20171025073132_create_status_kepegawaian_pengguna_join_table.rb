class CreateStatusKepegawaianPenggunaJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :status_kepegawaian, :pengguna do |t|
      # t.index [:status_kepegawaian_id, :pengguna_id]
      # t.index [:pengguna_id, :status_kepegawaian_id]
    end
  end
end
