class CreateDerajatPengaman < ActiveRecord::Migration[5.1]
  def change
    create_table :derajat_pengaman do |t|
      t.string :nama

      t.timestamps
    end
  end
end
