class AddAttachmentLampiranToDaftarPustaka < ActiveRecord::Migration
  def self.up
    change_table :daftar_pustaka do |t|
      t.attachment :lampiran
    end
  end

  def self.down
    remove_attachment :daftar_pustaka, :lampiran
  end
end
