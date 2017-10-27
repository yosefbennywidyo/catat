class Seksi < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 19, message: "harus terdiri dari minimal 19 karakter - contoh: Sekretariat Jendral" }
  has_and_belongs_to_many :pengguna
end
