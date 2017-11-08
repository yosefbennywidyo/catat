class RemoveStatusFromPengguna < ActiveRecord::Migration[5.1]
  def change
    remove_column :pengguna, :status, :string
  end
end
