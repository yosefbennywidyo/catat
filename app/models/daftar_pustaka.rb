class DaftarPustaka < ApplicationRecord
  has_attached_file :lampiran
  has_many :komentar, as: :commentable
  validates :judul, presence: true, length: { minimum: 10, message: "harus terdiri dari minimal 10 karakter - contoh: Surat Ijin" }
  validates :keterangan, presence: true, length: { minimum: 10, message: "harus terdiri dari minimal 10 karakter - contoh: Untuk pengajuan ijin, maksimal satu hari setelah tidak masuk" }
  validates_attachment :lampiran
  do_not_validate_attachment_file_type :lampiran
end
