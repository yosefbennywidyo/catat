class AddAttachmentLampiranDokumenToSuratKeluar < ActiveRecord::Migration[5.1]
  def self.up
    change_table :surat_keluar do |t|
      t.attachment :lampiran_dokumen
    end
  end

  def self.down
    remove_attachment :surat_keluar, :lampiran_dokumen
  end
end
