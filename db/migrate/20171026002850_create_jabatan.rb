class CreateJabatan < ActiveRecord::Migration[5.1]
  def change
    create_table :jabatan do |t|
      t.string :nama

      t.timestamps
    end
  end
end
