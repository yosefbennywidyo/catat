class CreatePengguna < ActiveRecord::Migration[5.1]
  def change
    create_table :pengguna do |t|
      t.string :nama

      t.timestamps
    end
  end
end
