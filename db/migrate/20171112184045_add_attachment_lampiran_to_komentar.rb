class AddAttachmentLampiranToKomentar < ActiveRecord::Migration
  def self.up
    change_table :komentar do |t|
      t.attachment :lampiran
    end
  end

  def self.down
    remove_attachment :komentar, :lampiran
  end
end
