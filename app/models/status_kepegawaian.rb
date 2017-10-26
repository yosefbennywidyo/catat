class StatusKepegawaian < ApplicationRecord
  validates :status_kepegawaian, presence: true, length: { minimum: 3, message: "harus terdiri dari minimal 3 karakter - contoh: PTT" }
  has_and_belongs_to_many :pengguna
end
