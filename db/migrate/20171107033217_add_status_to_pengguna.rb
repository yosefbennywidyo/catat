class AddStatusToPengguna < ActiveRecord::Migration[5.1]
  def change
    add_column :pengguna, :status, :string
  end
end
