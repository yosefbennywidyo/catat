class RemoveRelationsFromStatusAkun < ActiveRecord::Migration[5.1]
  def change
    remove_reference :status_akun, :penggun, foreign_key: true
  end
end
