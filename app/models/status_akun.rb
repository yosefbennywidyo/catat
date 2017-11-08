class StatusAkun < ApplicationRecord
  validates :keterangan, presence: true, length: { minimum: 5, message: "harus terdiri dari minimal 5 karakter - contoh: Aktif" }
  has_and_belongs_to_many :pengguna
end
