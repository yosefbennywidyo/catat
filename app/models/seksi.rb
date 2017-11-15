class Seksi < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 10, message: "harus terdiri dari minimal 10 karakter - contoh: Tata Usaha" }
  has_and_belongs_to_many :pengguna
  has_and_belongs_to_many :surat_keluar
end
