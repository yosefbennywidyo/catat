class AddLampiranToKomentar < ActiveRecord::Migration[5.1]
  def up
    add_attachment :komentar, :lampiran
  end

  def down
    remove_attachment :komentar, :lampiran
  end
end
