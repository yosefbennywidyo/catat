class DaftarPustaka < ApplicationRecord
  validates :judul, presence: true, length: { minimum: 10, message: "harus terdiri dari minimal 10 karakter - contoh: Surat Ijin" }
  validates :keterangan, presence: true, length: { minimum: 10, message: "harus terdiri dari minimal 10 karakter - contoh: Untuk pengajuan ijin, maksimal satu hari setelah tidak masuk" }
end
