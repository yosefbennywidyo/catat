class Seksi < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 20, message: "harus terdiri dari minimal 20 karakter - contoh: Urusan Agama Kristen" }
  has_and_belongs_to_many :pengguna
end
