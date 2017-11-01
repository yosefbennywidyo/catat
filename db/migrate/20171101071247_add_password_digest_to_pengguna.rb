class AddPasswordDigestToPengguna < ActiveRecord::Migration[5.1]
  def change
    add_column :pengguna, :password_digest, :string
  end
end
