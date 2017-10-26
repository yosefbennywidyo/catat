class Jabatan < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 7, message: "harus terdiri dari minimal 7 karakter - contoh: Penyuluh" }
  has_and_belongs_to_many :pengguna
end
