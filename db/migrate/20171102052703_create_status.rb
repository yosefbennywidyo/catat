class CreateStatus < ActiveRecord::Migration[5.1]
  def change
    create_table :status do |t|
      t.text :keterangan
      t.integer :statuses_id
      t.string :statuses_type

      t.timestamps
    end
  end
end
