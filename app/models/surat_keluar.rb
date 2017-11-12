class SuratKeluar < ApplicationRecord
  has_attached_file :lampiran_dokumen
  has_many :komentar, as: :commentable
  validates :judul, presence: true, length: { minimum: 8, message: "harus terdiri dari minimal 8 karakter - contoh: Undangan" }
  validates :keterangan, presence: true, length: { minimum: 8, message: "harus terdiri dari minimal 8 karakter - contoh: Untuk kegiatan HAB pada tanggal 3 Januari berlokasi di Aula Kantor Kementerian Agama Sumba Tengah" }
  validates_attachment :lampiran_dokumen
  do_not_validate_attachment_file_type :lampiran_dokumen
end
