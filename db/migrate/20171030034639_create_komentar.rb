class CreateKomentar < ActiveRecord::Migration[5.1]
  def change
    create_table :komentar do |t|
      t.text :isi
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
