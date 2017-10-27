class Jabatan < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 6, message: "harus terdiri dari minimal 6 karakter - contoh: Kepala" }
  has_and_belongs_to_many :pengguna
end
