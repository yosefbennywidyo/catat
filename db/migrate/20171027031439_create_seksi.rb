class CreateSeksi < ActiveRecord::Migration[5.1]
  def change
    create_table :seksi do |t|
      t.string :nama

      t.timestamps
    end
  end
end
