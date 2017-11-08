class CreateStatusAkun < ActiveRecord::Migration[5.1]
  def change
    create_table :status_akun do |t|
      t.string :keterangan

      t.timestamps
    end
  end
end
