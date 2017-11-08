class AddRelationToStatusAkun < ActiveRecord::Migration[5.1]
  def change
    add_reference :status_akun, :pengguna, foreign_key: true
  end
end
