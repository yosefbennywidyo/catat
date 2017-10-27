class Pengguna < ApplicationRecord
  validates :nama, presence: true, length: { minimum: 6, message: "harus terdiri dari minimal 6 karakter - contoh: Rifaid" }
  has_and_belongs_to_many :status_kepegawaian
  has_and_belongs_to_many :jabatan
  has_and_belongs_to_many :seksi
end
