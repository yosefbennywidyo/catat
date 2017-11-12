class AddLampiranToKomentar < ActiveRecord::Migration[5.1]
  def change
    add_column :komentar, :lampiran, :string
  end
end
