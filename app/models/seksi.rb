class Seksi < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 21, message: "harus terdiri dari minimal 21 karakter - contoh: Sub Bagian Tata Usaha" }
  has_and_belongs_to_many :pengguna
end
